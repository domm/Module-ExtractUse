package Module::ExtractUse;

use strict;
use warnings;
use 5.008;

use Pod::Strip;
use Parse::RecDescent 1.967009;
use Module::ExtractUse::Grammar;
use Carp;
use version; our $VERSION=version->new('0.29');

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
  
  # you can get optional, that is in eval context, use in the same style
  my $used=$p->optional_used;           # $used is a HASHREF
  print $p->optional_used('strict')     # true if code includes 'use strict'
  
  my @used=$p->optional_array;
  my $used=$p->optional_string;
  
  # and mandatory, that is outside eval context, use in the same style, also.
  my $used=$p->mandatory_used;           # $used is a HASHREF
  print $p->mandatory_used('strict')     # true if code includes 'use strict'
  
  my @used=$p->mandatory_array;
  my $used=$p->mandatory_string;

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

sub extract_use {
    my $self=shift;
    my $code_to_parse=shift;

    my $podless;
    my $pod_parser=Pod::Strip->new;
    $pod_parser->output_string(\$podless);
    if (ref($code_to_parse) eq 'SCALAR') {
        $pod_parser->parse_string_document($$code_to_parse);
    }
    else {
        $pod_parser->parse_file($code_to_parse);
    }

    # Strip obvious comments.
    $podless =~ s/^\s*#.*$//mg;

    # Regular expression to detect eval block
    # Eval string is handled after
    my $re = qr{
        \G(.*?)                   # group 1 : predecessor
        eval\s*(                  # group 2 : blocks
            {
                (?:
                    (?> [^{}]+ )  # Non-braces without backtracking
                |
                    (?2)          # Recurse to start of group 2
                )*
            }
        )
    }xs;
    my @statements;
    while($podless =~ /$re/gc) {
    # to keep parsing time short, split code in statements
    # (I know that this is not very exact, patches welcome!)
        push @statements, map { [ 0, $_ ] } split(/;/, $1); # non-eval context
        push @statements, map { [ 1, $_ ] } split(/;/, $2); # eval context
    }
    push @statements, map { [ 0, $_ ] } split(/;/, substr($podless, pos($podless) || 0)); # non-eval context

    foreach my $statement_ (@statements) {
        my ($eval, $statement) = @$statement_;
        $statement=~s/\n+/ /gs;
        my $result;

# TODO: This is not precise because it expects one eval in one statement
        # check for string eval in ' ', " " strings
        if ($statement !~ s/eval\s*(['"])(.*?)\1/$2;/) {
            # if that didn't work, try q and qq strings
            if ($statement !~ s/eval\s+qq?(\S)(.*?)\1/$2;/) {
                # finally try paired delims like qq< >, q( ), ...
                my %pair = qw| ( ) [ ] { } < > |;
                while (my ($l, $r) = map {quotemeta} each %pair) {
                    last if $statement =~ s/eval\s+qq?$l(.*?)$r/$1;/;
                }
                $eval_ = 0;
            }
        }

        # now that we've got some code containing 'use' or 'require',
        # parse it! (using different entry point to save some more
        # time)
        if ($statement=~/\buse/) {
            $statement=~s/^(.*?)use\b/use/;
            eval {
                my $parser=Module::ExtractUse::Grammar->new();
                $result=$parser->token_use($statement.';');
            };
        }
        elsif ($statement=~/\brequire/) {
            $statement=~s/^(.*?)require\b/require/s;
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

=head3 optional_used

Same as C<used>, except for considering in-eval-context only.

=cut

sub optional_used {
    my $self=shift;
    my $key=shift;
    return $self->{found_in_eval}{$key} if ($key);
    return $self->{found_in_eval};
}

=head3 mandatory_used

Same as C<used>, except for considering NOT-in-eval-context only.

=cut

sub mandatory_used {
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

=head3 optional_string

Same as C<string>, except for considering in-eval-context only.

=cut

sub optional_string {
    my $self=shift;
    my $sep=shift || ' ';
    return join($sep,sort keys(%{$self->{found_in_eval}}));
}

=head3 mandatory_string

Same as C<string>, except for considering NOT-in-eval-context only.

=cut

sub mandatory_string {
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

=head3 optional_array

Same as C<array>, except for considering in-eval-context only.

=cut

sub optional_array {
    return keys(%{shift->{found_in_eval}})
}

=head3 mandatory_array

Same as C<array>, except for considering NOT-in-eval-context only.

=cut

sub mandatory_array {
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

=head3 optional_arrayref

Same as C<array_ref>, except for considering in-eval-context only.

=cut

sub optional_arrayref {
    my @a=shift->optional_array;
    return \@a if @a;
    return;
}

=head3 mandatory_arrayref

Same as C<array_ref>, except for considering NOT-in-eval-context only.

=cut

sub mandatory_arrayref {
    my @a=shift->mandatory_array;
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

