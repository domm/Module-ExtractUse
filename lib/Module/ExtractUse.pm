package Module::ExtractUse;

use strict;
use warnings;
use 5.008;

use Pod::Strip;
use Parse::RecDescent 1.967009;
use Module::ExtractUse::Grammar;
use Carp;
use version; our $VERSION=version->new('0.32');

# ABSTRACT: Find out what modules are used

#$::RD_TRACE=1;
#$::RD_HINT=1;

=head1 SYNOPSIS

  use Module::ExtractUse;
  
  # get a parser
  my $p=Module::ExtractUse->new;
  
  # parse from a file
  $p->extract_use('/path/to/module.pm');
  
  # or parse from a ref to a string in memory
  $p->extract_use(\$string_containg_code);
  
  # use some reporting methods
  my $used=$p->used;           # $used is a HASHREF
  print $p->used('strict')     # true if code includes 'use strict'
  
  my @used=$p->array;
  my $used=$p->string;
  
  # you can get optional modules, that is use in eval context, in the same style
  my $used=$p->used_in_eval;           # $used is a HASHREF
  print $p->used_in_eval('strict')     # true if code includes 'use strict'
  
  my @used=$p->array_in_eval;
  my $used=$p->string_in_eval;
  
  # and mandatory modules, that is use out of eval context, in the same style, also.
  my $used=$p->used_out_of_eval;           # $used is a HASHREF
  print $p->used_out_of_eval('strict')     # true if code includes 'use strict'
  
  my @used=$p->array_out_of_eval;
  my $used=$p->string_out_of_eval;

=head1 DESCRIPTION

Module::ExtractUse is basically a Parse::RecDescent grammar to parse
Perl code. It tries very hard to find all modules (whether pragmas,
Core, or from CPAN) used by the parsed code.

"Usage" is defined by either calling C<use> or C<require>.

=head2 Methods

=cut

=head3 new

 my $p=Module::ExtractUse->new;

Returns a parser object

=cut

sub new {
    my $class=shift;
    return bless {
        found=>{},
        files=>0,
    },$class;
}

=head3 extract_use
  
  $p->extract_use('/path/to/module.pm');
  $p->extract_use(\$string_containg_code);

Runs the parser.

C<$code_to_parse> can be either a SCALAR, in which case
Module::ExtractUse tries to open the file specified in
$code_to_parse. Or a reference to a SCALAR, in which case
Module::ExtractUse assumes the referenced scalar contains the source
code.

The code will be stripped from POD (using Pod::Strip) and split on ";"
(semicolon). Each statement (i.e. the stuff between two semicolons) is
checked by a simple regular expression.

If the statement contains either 'use' or 'require', the statment is
handed over to the parser, who then tries to figure out, B<what> is
used or required. The results will be saved in a data structure that
you can examine afterwards.

You can call C<extract_use> several times on different files. It will
count how many files where examined and how often each module was used.

=cut

# Regular expression to detect eval
#  On newer perl, you can use named capture groups and (?&name) for recursive regex
#  However, it requires perl newer than 5.008 declared as requirement in this module
my $re_block;
$re_block = qr {
    ( # eval BLOCK, corresponding to the group 10 in the entire regex
        {
            ((?:
                (?> [^{}]+ )  # Non-braces without backtracking
            |
                (??{$re_block}) # Recurse to group 10
            )*)
        }
    )
}xs;
my $re = qr{
    \G(.*?) # group 1
    eval
    (?:
        (?:\s+
            (?:
                qq?\((.*?)\) # eval q(), group 2
                |
                qq?\[(.*?)\] # eval q[], group 3
                |
                qq?{(.*?)}   # eval q{}, group 4
                |
                qq?<(.*?)>   # eval q<>, group 5
                |
                qq?(\S)(.*?)\6 # eval q'' or so, group 6, group 7
            )
        )
        |
        (?:\s*(?:
            (?:(['"])(.*?)\8) # eval '' or eval "", group 8, group 9
            |
            ( # eval BLOCK, group 10
                {
                    ((?: # group 11
                        (?> [^{}]+ )  # Non-braces without backtracking
                    |
                        (??{$re_block}) # Recurse to group 10
                    )*)
                }
            )
        ))
    )
}xs;

sub extract_use {
    my $self=shift;
    my $code_to_parse=shift;

    my $podless;
    my $pod_parser=Pod::Strip->new;
    $pod_parser->output_string(\$podless);
    $pod_parser->parse_characters(1) if $pod_parser->can('parse_characters');
    if (ref($code_to_parse) eq 'SCALAR') {
        $pod_parser->parse_string_document($$code_to_parse);
    }
    else {
        $pod_parser->parse_file($code_to_parse);
    }

    # Strip obvious comments.
    $podless =~ s/(^|[\};])\s*#.*$/$1/mg;

    # Strip __(DATA|END)__ sections.
    $podless =~ s/\n__(?:DATA|END)__\b.*$//s;

    my @statements;
    while($podless =~ /$re/gc) {
    # to keep parsing time short, split code in statements
    # (I know that this is not very exact, patches welcome!)
        my $pre = $1;
        my $eval = join('', grep { defined $_ } ($2, $3, $4, $5, $7, $9, $11));
        push @statements, map { [ 0, $_ ] } split(/;/, $pre); # non-eval context
        push @statements, map { [ 1, $_ ] } split(/;/, $eval); # eval context
    }
    push @statements, map { [ 0, $_ ] } split(/;/, substr($podless, pos($podless) || 0)); # non-eval context

    foreach my $statement_ (@statements) {
        my ($eval, $statement) = @$statement_;
        $statement=~s/\n+/ /gs;
        my $result;

        # now that we've got some code containing 'use' or 'require',
        # parse it! (using different entry point to save some more
        # time)
        if ($statement=~/\buse/) {
            $statement=~s/^(.*?)use\b/use/;
            next if $1 && $1 =~ /->\s*$/;
            eval {
                my $parser=Module::ExtractUse::Grammar->new();
                $result=$parser->token_use($statement.';');
            };
        }
        elsif ($statement=~/\brequire/) {
            $statement=~s/^(.*?)require\b/require/s;
            next if $1 && $1 =~ /->\s*$/;
            eval {
                my $parser=Module::ExtractUse::Grammar->new();
                $result=$parser->token_require($statement.';');
            };
        }

        next unless $result;

        foreach (split(/\s+/,$result)) {
            $self->_add($_, $eval) if($_);
        }
    }

    # increment file counter
    $self->_inc_files;

    return $self;
}

=head2 Accessor Methods

Those are various ways to get at the result of the parse.

Note that C<extract_use> returns the parser object, so you can say

  print $p->extract_use($code_to_parse)->string;

=cut

=head3 used
    
    my $used=$p->used;           # $used is a HASHREF
    print $p->used('strict')     # true if code includes 'use strict'

If called without an argument, returns a reference to an hash of all
used modules. Keys are the names of the modules, values are the number
of times they were used.

If called with an argument, looks up the value of the argument in the
hash and returns the number of times it was found during parsing.

This is the preferred accessor.

=cut

sub used {
    my $self=shift;
    my $key=shift;
    return $self->{found}{$key} if ($key);
    return $self->{found};
}

=head3 used_in_eval

Same as C<used>, except for considering in-eval-context only.

=cut

sub used_in_eval {
    my $self=shift;
    my $key=shift;
    return $self->{found_in_eval}{$key} if ($key);
    return $self->{found_in_eval};
}

=head3 used_out_of_eval

Same as C<used>, except for considering NOT-in-eval-context only.

=cut

sub used_out_of_eval {
    my $self=shift;
    my $key=shift;
    return $self->{found_not_in_eval}{$key} if ($key);
    return $self->{found_not_in_eval};
}

=head3 string

    print $p->string($seperator)

Returns a sorted string of all used modules, joined using the value of
C<$seperator> or using a blank space as a default;

Module names are sorted by ascii value (i.e by C<sort>)

=cut

sub string {
    my $self=shift;
    my $sep=shift || ' ';
    return join($sep,sort keys(%{$self->{found}}));
}

=head3 string_in_eval

Same as C<string>, except for considering in-eval-context only.

=cut

sub string_in_eval {
    my $self=shift;
    my $sep=shift || ' ';
    return join($sep,sort keys(%{$self->{found_in_eval}}));
}

=head3 string_out_of_eval

Same as C<string>, except for considering NOT-in-eval-context only.

=cut

sub string_out_of_eval {
    my $self=shift;
    my $sep=shift || ' ';
    return join($sep,sort keys(%{$self->{found_not_in_eval}}));
}

=head3 array

    my @array = $p->array;

Returns an array of all used modules.

=cut

sub array {
    return keys(%{shift->{found}})
}

=head3 array_in_eval

Same as C<array>, except for considering in-eval-context only.

=cut

sub array_in_eval {
    return keys(%{shift->{found_in_eval}})
}

=head3 array_out_of_eval

Same as C<array>, except for considering NOT-in-eval-context only.

=cut

sub array_out_of_eval {
    return keys(%{shift->{found_not_in_eval}})
}

=head3 arrayref

    my $arrayref = $p->arrayref;

Returns a reference to an array of all used modules. Surprise!

=cut

sub arrayref { 
    my @a=shift->array;
    return \@a if @a;
    return;
}

=head3 arrayref_in_eval

Same as C<array_ref>, except for considering in-eval-context only.

=cut

sub arrayref_in_eval {
    my @a=shift->array_in_eval;
    return \@a if @a;
    return;
}

=head3 arrayref_out_of_eval

Same as C<array_ref>, except for considering NOT-in-eval-context only.

=cut

sub arrayref_out_of_eval {
    my @a=shift->array_out_of_eval;
    return \@a if @a;
    return;
}

=head3 files

Returns the number of files parsed by the parser object.

=cut

sub files {
    return shift->{files};
}

# Internal Accessor Methods
sub _add {
    my $self=shift;
    my $found=shift;
    my $eval=shift;
    $self->{found}{$found}++;
    $self->{found_in_eval}{$found}++ if $eval;
    $self->{found_not_in_eval}{$found}++ unless $eval;
}

sub _found {
    return shift->{found}
}

sub _inc_files {
    shift->{files}++
}

1;

__END__

=head1 RE-COMPILING THE GRAMMAR

If - for some reasons - you need to alter the grammar, edit the file
F<grammar> and afterwards run:

  perl -MParse::RecDescent - grammar Module::ExtractUse::Grammar

Make sure you're in the right directory, i.e. in F<.../Module/ExtractUse/>

=head1 EXPORTS

Nothing.

=head1 SEE ALSO

Parse::RecDescent, Module::ScanDeps, Module::Info, Module::CPANTS::Analyse

=cut

