package Module::ExtractUse::Grammar;
use Parse::RecDescent;
{ my $ERRORS;


package Parse::RecDescent::Module::ExtractUse::Grammar;
use strict;
use vars qw($skip $AUTOLOAD  );
@Parse::RecDescent::Module::ExtractUse::Grammar::ISA = ();
$skip = '\s*';


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN Parse::RecDescent NAMESPACE
*Parse::RecDescent::Module::ExtractUse::Grammar::AUTOLOAD   = sub
{
    no strict 'refs';
    $AUTOLOAD =~ s/^Parse::RecDescent::Module::ExtractUse::Grammar/Parse::RecDescent/;
    goto &{$AUTOLOAD};
}
}

push @Parse::RecDescent::Module::ExtractUse::Grammar::ISA, 'Parse::RecDescent';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::_alternation_1_of_production_1_of_rule_require_stuff
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_require_stuff"};

    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_require_stuff]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_require_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{version, or require_name, or module});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [version]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_require_stuff});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_require_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [version]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_require_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::version($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [version]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_require_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [version]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{version}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [version]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [require_name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_require_stuff});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_require_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [require_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_require_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::require_name($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [require_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_require_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [require_name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{require_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [require_name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [module]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_require_stuff});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_require_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [module]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_require_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::module($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [module]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_require_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [module]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{module}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [module]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_require_stuff},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_require_stuff},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::eos
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"eos"};

    Parse::RecDescent::_trace(q{Trying rule: [eos]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{eos},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: []},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{eos},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{eos});
        %item = (__RULE__ => q{eos});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{eos},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $text=~/^[\s;]+$/ ? 1 : undef;};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: []<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{eos},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{eos},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{eos},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{eos},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{eos},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::token_use
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"token_use"};

    Parse::RecDescent::_trace(q{Trying rule: [token_use]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{token_use},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/\\buse\\s/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/\\buse\\s/ use_stuff ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{token_use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{token_use});
        %item = (__RULE__ => q{token_use});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/\\buse\\s/]}, Parse::RecDescent::_tracefirst($text),
                      q{token_use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\buse\s)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [use_stuff]},
                  Parse::RecDescent::_tracefirst($text),
                  q{token_use},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{use_stuff})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::use_stuff($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [use_stuff]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{token_use},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [use_stuff]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{token_use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{use_stuff}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{token_use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{token_use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return=$item{use_stuff} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/\\buse\\s/ use_stuff ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{token_use},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{token_use},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{token_use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{token_use},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{token_use},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::list_item
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"list_item"};

    Parse::RecDescent::_trace(q{Trying rule: [list_item]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{list_item},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/\\w+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<perl_quotelike>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{list_item});
        %item = (__RULE__ => q{list_item});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<perl_quotelike>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { my ($match,@res);
                     ($match,$text,undef,@res) =
                          Text::Balanced::extract_quotelike($text,$skip);
                      $match ? \@res : undef;
                     };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return=$item[1][2] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [<perl_quotelike>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/\\w+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{list_item});
        %item = (__RULE__ => q{list_item});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/\\w+/]}, Parse::RecDescent::_tracefirst($text),
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\w+)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return=$item[1] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/\\w+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{list_item},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{list_item},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{list_item},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::comma_list_item
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"comma_list_item"};

    Parse::RecDescent::_trace(q{Trying rule: [comma_list_item]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{comma_list_item},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{comma});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [comma list_item]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{comma_list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{comma_list_item});
        %item = (__RULE__ => q{comma_list_item});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [comma]},
                  Parse::RecDescent::_tracefirst($text),
                  q{comma_list_item},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::comma($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [comma]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{comma_list_item},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [comma]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{comma_list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{comma}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [list_item]},
                  Parse::RecDescent::_tracefirst($text),
                  q{comma_list_item},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{list_item})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::list_item($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [list_item]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{comma_list_item},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [list_item]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{comma_list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{list_item}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{comma_list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return=$item{list_item} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [comma list_item]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{comma_list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{comma_list_item},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{comma_list_item},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{comma_list_item},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{comma_list_item},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::pragma
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"pragma"};

    Parse::RecDescent::_trace(q{Trying rule: [pragma]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{pragma},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[a-z\\d]+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[a-z\\d]+/ import_list]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{pragma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{pragma});
        %item = (__RULE__ => q{pragma});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[a-z\\d]+/]}, Parse::RecDescent::_tracefirst($text),
                      q{pragma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[a-z\d]+)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [import_list]},
                  Parse::RecDescent::_tracefirst($text),
                  q{pragma},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{import_list})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::import_list($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [import_list]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{pragma},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [import_list]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{pragma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{import_list}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{pragma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return=$item[1]};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/[a-z\\d]+/ import_list]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{pragma},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{pragma},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{pragma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{pragma},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{pragma},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::module_more
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"module_more"};

    Parse::RecDescent::_trace(q{Trying rule: [module_more]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{module_more},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{eos, or version});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [eos]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{module_more});
        %item = (__RULE__ => q{module_more});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [eos]},
                  Parse::RecDescent::_tracefirst($text),
                  q{module_more},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::eos($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [eos]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{module_more},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [eos]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{eos}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [eos]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [version var import_list]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{module_more});
        %item = (__RULE__ => q{module_more});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying repeated subrule: [version]},
                  Parse::RecDescent::_tracefirst($text),
                  q{module_more},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Module::ExtractUse::Grammar::version, 0, 1, $_noactions,undef,$expectation,sub { \@arg })))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [version]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{module_more},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [version]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{version(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [var]},
                  Parse::RecDescent::_tracefirst($text),
                  q{module_more},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{var})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Module::ExtractUse::Grammar::var, 0, 1, $_noactions,undef,$expectation,sub { \@arg })))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [var]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{module_more},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [var]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{var(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [import_list]},
                  Parse::RecDescent::_tracefirst($text),
                  q{module_more},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{import_list})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Module::ExtractUse::Grammar::import_list, 0, 1, $_noactions,undef,$expectation,sub { \@arg })))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [import_list]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{module_more},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [import_list]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{import_list(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [version var import_list]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{module_more},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{module_more},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{module_more},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{module_more},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::module_name
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"module_name"};

    Parse::RecDescent::_trace(q{Trying rule: [module_name]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{module_name},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[\\w:]+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[\\w:]+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{module_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{module_name});
        %item = (__RULE__ => q{module_name});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[\\w:]+/]}, Parse::RecDescent::_tracefirst($text),
                      q{module_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[\w:]+)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/[\\w:]+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{module_name},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{module_name},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{module_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{module_name},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{module_name},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::var
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"var"};

    Parse::RecDescent::_trace(q{Trying rule: [var]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{var},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/\\$[\\w+]/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/\\$[\\w+]/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{var},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{var});
        %item = (__RULE__ => q{var});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/\\$[\\w+]/]}, Parse::RecDescent::_tracefirst($text),
                      q{var},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\$[\w+])/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/\\$[\\w+]/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{var},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{var},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{var},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{var},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{var},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::module
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"module"};

    Parse::RecDescent::_trace(q{Trying rule: [module]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{module},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{module_name});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [module_name module_more]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{module},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{module});
        %item = (__RULE__ => q{module});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [module_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{module},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::module_name($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [module_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{module},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [module_name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{module},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{module_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [module_more]},
                  Parse::RecDescent::_tracefirst($text),
                  q{module},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{module_more})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::module_more($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [module_more]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{module},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [module_more]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{module},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{module_more}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{module},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return=$item{module_name} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [module_name module_more]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{module},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{module},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{module},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{module},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{module},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::_alternation_1_of_production_1_of_rule_comma
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_comma"};

    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_comma]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_comma},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{',', or '=>'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [',']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_comma});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_comma});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [',']},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\,/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{>>Matched production: [',']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['=>']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_comma});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_comma});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['=>']},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\=\>/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['=>']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_comma},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_comma},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::base
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"base"};

    Parse::RecDescent::_trace(q{Trying rule: [base]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{base},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'base'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['base' import_list]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{base},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{base});
        %item = (__RULE__ => q{base});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['base']},
                      Parse::RecDescent::_tracefirst($text),
                      q{base},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "base"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [import_list]},
                  Parse::RecDescent::_tracefirst($text),
                  q{base},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{import_list})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::import_list($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [import_list]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{base},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [import_list]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{base},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{import_list}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: ['base' import_list]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{base},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{base},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{base},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{base},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{base},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::require_stuff
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"require_stuff"};

    Parse::RecDescent::_trace(q{Trying rule: [require_stuff]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{require_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{version, or require_name, or module});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [version, or require_name, or module]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{require_stuff});
        %item = (__RULE__ => q{require_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_require_stuff]},
                  Parse::RecDescent::_tracefirst($text),
                  q{require_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::_alternation_1_of_production_1_of_rule_require_stuff($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_require_stuff]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{require_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_require_stuff]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_require_stuff}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [version, or require_name, or module]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{require_stuff},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{require_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{require_stuff},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{require_stuff},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::comma
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"comma"};

    Parse::RecDescent::_trace(q{Trying rule: [comma]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{comma},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{',', or '=>'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [',', or '=>']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{comma});
        %item = (__RULE__ => q{comma});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_comma]},
                  Parse::RecDescent::_tracefirst($text),
                  q{comma},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::_alternation_1_of_production_1_of_rule_comma($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_comma]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{comma},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_comma]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_comma}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [',', or '=>']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{comma},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{comma},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{comma},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{comma},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::version
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"version"};

    Parse::RecDescent::_trace(q{Trying rule: [version]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{version},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[\\d\\._v]+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[\\d\\._v]+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{version},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{version});
        %item = (__RULE__ => q{version});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[\\d\\._v]+/]}, Parse::RecDescent::_tracefirst($text),
                      q{version},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[\d\._v]+)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/[\\d\\._v]+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{version},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{version},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{version},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{version},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{version},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::use_stuff
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"use_stuff"};

    Parse::RecDescent::_trace(q{Trying rule: [use_stuff]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{use_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{base, or pragma, or version, or module});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [base, or pragma, or version, or module]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{use_stuff});
        %item = (__RULE__ => q{use_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_use_stuff]},
                  Parse::RecDescent::_tracefirst($text),
                  q{use_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::_alternation_1_of_production_1_of_rule_use_stuff($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_use_stuff]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{use_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_use_stuff]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_use_stuff}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [base, or pragma, or version, or module]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{use_stuff},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{use_stuff},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{use_stuff},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::import_list
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"import_list"};

    Parse::RecDescent::_trace(q{Trying rule: [import_list]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{import_list},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[(]?/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[(]?/ list_item comma_list_item /[)]?/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{import_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{import_list});
        %item = (__RULE__ => q{import_list});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[(]?/]}, Parse::RecDescent::_tracefirst($text),
                      q{import_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[(]?)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [list_item]},
                  Parse::RecDescent::_tracefirst($text),
                  q{import_list},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{list_item})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::list_item($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [list_item]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{import_list},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [list_item]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{import_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{list_item}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [comma_list_item]},
                  Parse::RecDescent::_tracefirst($text),
                  q{import_list},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{comma_list_item})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Module::ExtractUse::Grammar::comma_list_item, 0, 100000000, $_noactions,undef,$expectation,sub { \@arg })))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [comma_list_item]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{import_list},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [comma_list_item]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{import_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{comma_list_item(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [/[)]?/]}, Parse::RecDescent::_tracefirst($text),
                      q{import_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/[)]?/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[)]?)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{import_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return=$item[2];
		  $return.=" ".join(" ",@{$item[3]}) if $item[3];
		};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/[(]?/ list_item comma_list_item /[)]?/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{import_list},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{import_list},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{import_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{import_list},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{import_list},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::_alternation_1_of_production_1_of_rule_use_stuff
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_use_stuff"};

    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_use_stuff]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_use_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{base, or pragma, or version, or module});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [base]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_use_stuff});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_use_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [base]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_use_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::base($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [base]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_use_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [base]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{base}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [base]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [pragma]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_use_stuff});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_use_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [pragma]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_use_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::pragma($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [pragma]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_use_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [pragma]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{pragma}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [pragma]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [version]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_use_stuff});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_use_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [version]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_use_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::version($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [version]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_use_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [version]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{version}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [version]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [module]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_use_stuff});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_use_stuff});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [module]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_use_stuff},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::module($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [module]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_use_stuff},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [module]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{module}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [module]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_use_stuff},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_use_stuff},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::token_require
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"token_require"};

    Parse::RecDescent::_trace(q{Trying rule: [token_require]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{token_require},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/\\brequire\\s/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/\\brequire\\s/ require_stuff ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{token_require},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{token_require});
        %item = (__RULE__ => q{token_require});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/\\brequire\\s/]}, Parse::RecDescent::_tracefirst($text),
                      q{token_require},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\brequire\s)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [require_stuff]},
                  Parse::RecDescent::_tracefirst($text),
                  q{token_require},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{require_stuff})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Module::ExtractUse::Grammar::require_stuff($thisparser,$text,$repeating,$_noactions,undef,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [require_stuff]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{token_require},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [require_stuff]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{token_require},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{require_stuff}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{token_require},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{token_require},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return=$item{require_stuff} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/\\brequire\\s/ require_stuff ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{token_require},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{token_require},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{token_require},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{token_require},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{token_require},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, $_itempos, \@args)
sub Parse::RecDescent::Module::ExtractUse::Grammar::require_name
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"require_name"};

    Parse::RecDescent::_trace(q{Trying rule: [require_name]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{require_name},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my $_itempos = $_[4];
    my @arg =    defined $_[5] ? @{ &{$_[5]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<perl_quotelike>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{require_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{require_name});
        %item = (__RULE__ => q{require_name});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<perl_quotelike>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{require_name},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { my ($match,@res);
                     ($match,$text,undef,@res) =
                          Text::Balanced::extract_quotelike($text,$skip);
                      $match ? \@res : undef;
                     };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{require_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { my $name=$item[1][2];
		  return 1 if ($name=~/\.pl$/);
		  $name=~s(/)(::)g;
		  $name=~s/\.pm//;
		  $return=$name;
		};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [<perl_quotelike>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{require_name},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{require_name},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{require_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{require_name},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{require_name},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}
}
package Module::ExtractUse::Grammar; sub new { my $self = bless( {
                 '_precompiled' => 1,
                 'localvars' => '',
                 'startcode' => '',
                 'namespace' => 'Parse::RecDescent::Module::ExtractUse::Grammar',
                 'rules' => {
                              '_alternation_1_of_production_1_of_rule_require_stuff' => bless( {
                                                                                                 'impcount' => 0,
                                                                                                 'calls' => [
                                                                                                              'version',
                                                                                                              'require_name',
                                                                                                              'module'
                                                                                                            ],
                                                                                                 'changed' => 0,
                                                                                                 'opcount' => 0,
                                                                                                 'prods' => [
                                                                                                              bless( {
                                                                                                                       'number' => 0,
                                                                                                                       'strcount' => 0,
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'error' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'actcount' => 0,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'subrule' => 'version',
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'line' => 65
                                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                                                  ],
                                                                                                                       'line' => undef
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'number' => 1,
                                                                                                                       'strcount' => 0,
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'error' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'actcount' => 0,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'subrule' => 'require_name',
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'line' => 65
                                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                                                  ],
                                                                                                                       'line' => 65
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'number' => 2,
                                                                                                                       'strcount' => 0,
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'error' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'actcount' => 0,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'subrule' => 'module',
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'line' => 65
                                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                                                  ],
                                                                                                                       'line' => 65
                                                                                                                     }, 'Parse::RecDescent::Production' )
                                                                                                            ],
                                                                                                 'name' => '_alternation_1_of_production_1_of_rule_require_stuff',
                                                                                                 'vars' => '',
                                                                                                 'line' => 65
                                                                                               }, 'Parse::RecDescent::Rule' ),
                              'eos' => bless( {
                                                'impcount' => 0,
                                                'calls' => [],
                                                'changed' => 0,
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'number' => 0,
                                                                      'strcount' => 0,
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'error' => undef,
                                                                      'patcount' => 0,
                                                                      'actcount' => 1,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'lookahead' => 0,
                                                                                            'line' => 45,
                                                                                            'code' => '{ $text=~/^[\\s;]+$/ ? 1 : undef;}'
                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                 ],
                                                                      'line' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'name' => 'eos',
                                                'vars' => '',
                                                'line' => 45
                                              }, 'Parse::RecDescent::Rule' ),
                              'token_use' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'use_stuff'
                                                                 ],
                                                      'changed' => 0,
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => 0,
                                                                            'strcount' => 1,
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 1,
                                                                            'actcount' => 1,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'pattern' => '\\buse\\s',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'description' => '/\\\\buse\\\\s/',
                                                                                                  'lookahead' => 0,
                                                                                                  'rdelim' => '/',
                                                                                                  'line' => 5,
                                                                                                  'mod' => '',
                                                                                                  'ldelim' => '/'
                                                                                                }, 'Parse::RecDescent::Token' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'use_stuff',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 5
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'pattern' => ';',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'description' => '\';\'',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 5
                                                                                                }, 'Parse::RecDescent::Literal' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 6,
                                                                                                  'code' => '{ $return=$item{use_stuff} }'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'token_use',
                                                      'vars' => '',
                                                      'line' => 3
                                                    }, 'Parse::RecDescent::Rule' ),
                              'list_item' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [],
                                                      'changed' => 0,
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => 0,
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 1,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<perl_quotelike>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 57,
                                                                                                  'code' => 'my ($match,@res);
                     ($match,$text,undef,@res) =
                          Text::Balanced::extract_quotelike($text,$skip);
                      $match ? \\@res : undef;
                    '
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 57,
                                                                                                  'code' => '{ $return=$item[1][2] }'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => 1,
                                                                            'strcount' => 0,
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 1,
                                                                            'actcount' => 1,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'pattern' => '\\w+',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'description' => '/\\\\w+/',
                                                                                                  'lookahead' => 0,
                                                                                                  'rdelim' => '/',
                                                                                                  'line' => 59,
                                                                                                  'mod' => '',
                                                                                                  'ldelim' => '/'
                                                                                                }, 'Parse::RecDescent::Token' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 59,
                                                                                                  'code' => '{ $return=$item[1] }'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => 58
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'list_item',
                                                      'vars' => '',
                                                      'line' => 57
                                                    }, 'Parse::RecDescent::Rule' ),
                              'comma_list_item' => bless( {
                                                            'impcount' => 0,
                                                            'calls' => [
                                                                         'comma',
                                                                         'list_item'
                                                                       ],
                                                            'changed' => 0,
                                                            'opcount' => 0,
                                                            'prods' => [
                                                                         bless( {
                                                                                  'number' => 0,
                                                                                  'strcount' => 0,
                                                                                  'dircount' => 0,
                                                                                  'uncommit' => undef,
                                                                                  'error' => undef,
                                                                                  'patcount' => 0,
                                                                                  'actcount' => 1,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'subrule' => 'comma',
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'argcode' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'line' => 61
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'subrule' => 'list_item',
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'argcode' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'line' => 61
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0,
                                                                                                        'line' => 62,
                                                                                                        'code' => '{ $return=$item{list_item} }'
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'line' => undef
                                                                                }, 'Parse::RecDescent::Production' )
                                                                       ],
                                                            'name' => 'comma_list_item',
                                                            'vars' => '',
                                                            'line' => 61
                                                          }, 'Parse::RecDescent::Rule' ),
                              'pragma' => bless( {
                                                   'impcount' => 0,
                                                   'calls' => [
                                                                'import_list'
                                                              ],
                                                   'changed' => 0,
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'number' => 0,
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 1,
                                                                         'actcount' => 1,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'pattern' => '[a-z\\d]+',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'description' => '/[a-z\\\\d]+/',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'line' => 12,
                                                                                               'mod' => '',
                                                                                               'ldelim' => '/'
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'subrule' => 'import_list',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 12
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 13,
                                                                                               'code' => '{ $return=$item[1]}'
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'name' => 'pragma',
                                                   'vars' => '',
                                                   'line' => 12
                                                 }, 'Parse::RecDescent::Rule' ),
                              'module_more' => bless( {
                                                        'impcount' => 0,
                                                        'calls' => [
                                                                     'eos',
                                                                     'version',
                                                                     'var',
                                                                     'import_list'
                                                                   ],
                                                        'changed' => 0,
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'number' => 0,
                                                                              'strcount' => 0,
                                                                              'dircount' => 0,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'subrule' => 'eos',
                                                                                                    'matchrule' => 0,
                                                                                                    'implicit' => undef,
                                                                                                    'argcode' => undef,
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 20
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'number' => 1,
                                                                              'strcount' => 0,
                                                                              'dircount' => 0,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'subrule' => 'version',
                                                                                                    'expected' => undef,
                                                                                                    'min' => 0,
                                                                                                    'argcode' => undef,
                                                                                                    'max' => 1,
                                                                                                    'matchrule' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 20
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'subrule' => 'var',
                                                                                                    'expected' => undef,
                                                                                                    'min' => 0,
                                                                                                    'argcode' => undef,
                                                                                                    'max' => 1,
                                                                                                    'matchrule' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 20
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'subrule' => 'import_list',
                                                                                                    'expected' => undef,
                                                                                                    'min' => 0,
                                                                                                    'argcode' => undef,
                                                                                                    'max' => 1,
                                                                                                    'matchrule' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 20
                                                                                                  }, 'Parse::RecDescent::Repetition' )
                                                                                         ],
                                                                              'line' => 20
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'name' => 'module_more',
                                                        'vars' => '',
                                                        'line' => 20
                                                      }, 'Parse::RecDescent::Rule' ),
                              'module_name' => bless( {
                                                        'impcount' => 0,
                                                        'calls' => [],
                                                        'changed' => 0,
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'number' => 0,
                                                                              'strcount' => 0,
                                                                              'dircount' => 0,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 1,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'pattern' => '[\\w:]+',
                                                                                                    'hashname' => '__PATTERN1__',
                                                                                                    'description' => '/[\\\\w:]+/',
                                                                                                    'lookahead' => 0,
                                                                                                    'rdelim' => '/',
                                                                                                    'line' => 18,
                                                                                                    'mod' => '',
                                                                                                    'ldelim' => '/'
                                                                                                  }, 'Parse::RecDescent::Token' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'name' => 'module_name',
                                                        'vars' => '',
                                                        'line' => 18
                                                      }, 'Parse::RecDescent::Rule' ),
                              'var' => bless( {
                                                'impcount' => 0,
                                                'calls' => [],
                                                'changed' => 0,
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'number' => 0,
                                                                      'strcount' => 0,
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'error' => undef,
                                                                      'patcount' => 1,
                                                                      'actcount' => 0,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'pattern' => '\\$[\\w+]',
                                                                                            'hashname' => '__PATTERN1__',
                                                                                            'description' => '/\\\\$[\\\\w+]/',
                                                                                            'lookahead' => 0,
                                                                                            'rdelim' => '/',
                                                                                            'line' => 47,
                                                                                            'mod' => '',
                                                                                            'ldelim' => '/'
                                                                                          }, 'Parse::RecDescent::Token' )
                                                                                 ],
                                                                      'line' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'name' => 'var',
                                                'vars' => '',
                                                'line' => 47
                                              }, 'Parse::RecDescent::Rule' ),
                              'module' => bless( {
                                                   'impcount' => 0,
                                                   'calls' => [
                                                                'module_name',
                                                                'module_more'
                                                              ],
                                                   'changed' => 0,
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'number' => 0,
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 1,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'subrule' => 'module_name',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 15
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'subrule' => 'module_more',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 15
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 16,
                                                                                               'code' => '{ $return=$item{module_name} }'
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'name' => 'module',
                                                   'vars' => '',
                                                   'line' => 15
                                                 }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_comma' => bless( {
                                                                                         'impcount' => 0,
                                                                                         'calls' => [],
                                                                                         'changed' => 0,
                                                                                         'opcount' => 0,
                                                                                         'prods' => [
                                                                                                      bless( {
                                                                                                               'number' => 0,
                                                                                                               'strcount' => 1,
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'error' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'actcount' => 0,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'pattern' => ',',
                                                                                                                                     'hashname' => '__STRING1__',
                                                                                                                                     'description' => '\',\'',
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'line' => 65
                                                                                                                                   }, 'Parse::RecDescent::Literal' )
                                                                                                                          ],
                                                                                                               'line' => undef
                                                                                                             }, 'Parse::RecDescent::Production' ),
                                                                                                      bless( {
                                                                                                               'number' => 1,
                                                                                                               'strcount' => 1,
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'error' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'actcount' => 0,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'pattern' => '=>',
                                                                                                                                     'hashname' => '__STRING1__',
                                                                                                                                     'description' => '\'=>\'',
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'line' => 65
                                                                                                                                   }, 'Parse::RecDescent::Literal' )
                                                                                                                          ],
                                                                                                               'line' => 65
                                                                                                             }, 'Parse::RecDescent::Production' )
                                                                                                    ],
                                                                                         'name' => '_alternation_1_of_production_1_of_rule_comma',
                                                                                         'vars' => '',
                                                                                         'line' => 65
                                                                                       }, 'Parse::RecDescent::Rule' ),
                              'base' => bless( {
                                                 'impcount' => 0,
                                                 'calls' => [
                                                              'import_list'
                                                            ],
                                                 'changed' => 0,
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'number' => 0,
                                                                       'strcount' => 1,
                                                                       'dircount' => 0,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 0,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'pattern' => 'base',
                                                                                             'hashname' => '__STRING1__',
                                                                                             'description' => '\'base\'',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 10
                                                                                           }, 'Parse::RecDescent::InterpLit' ),
                                                                                    bless( {
                                                                                             'subrule' => 'import_list',
                                                                                             'matchrule' => 0,
                                                                                             'implicit' => undef,
                                                                                             'argcode' => undef,
                                                                                             'lookahead' => 0,
                                                                                             'line' => 10
                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                  ],
                                                                       'line' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'name' => 'base',
                                                 'vars' => '',
                                                 'line' => 10
                                               }, 'Parse::RecDescent::Rule' ),
                              'require_stuff' => bless( {
                                                          'impcount' => 1,
                                                          'calls' => [
                                                                       '_alternation_1_of_production_1_of_rule_require_stuff'
                                                                     ],
                                                          'changed' => 0,
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'number' => 0,
                                                                                'strcount' => 0,
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'error' => undef,
                                                                                'patcount' => 0,
                                                                                'actcount' => 0,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'subrule' => '_alternation_1_of_production_1_of_rule_require_stuff',
                                                                                                      'matchrule' => 0,
                                                                                                      'implicit' => 'version, or require_name, or module',
                                                                                                      'argcode' => undef,
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 29
                                                                                                    }, 'Parse::RecDescent::Subrule' )
                                                                                           ],
                                                                                'line' => undef
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'name' => 'require_stuff',
                                                          'vars' => '',
                                                          'line' => 29
                                                        }, 'Parse::RecDescent::Rule' ),
                              'comma' => bless( {
                                                  'impcount' => 1,
                                                  'calls' => [
                                                               '_alternation_1_of_production_1_of_rule_comma'
                                                             ],
                                                  'changed' => 0,
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'number' => 0,
                                                                        'strcount' => 0,
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'subrule' => '_alternation_1_of_production_1_of_rule_comma',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => '\',\', or \'=>\'',
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 64
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'name' => 'comma',
                                                  'vars' => '',
                                                  'line' => 64
                                                }, 'Parse::RecDescent::Rule' ),
                              'version' => bless( {
                                                    'impcount' => 0,
                                                    'calls' => [],
                                                    'changed' => 0,
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'number' => 0,
                                                                          'strcount' => 0,
                                                                          'dircount' => 0,
                                                                          'uncommit' => undef,
                                                                          'error' => undef,
                                                                          'patcount' => 1,
                                                                          'actcount' => 0,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'pattern' => '[\\d\\._v]+',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'description' => '/[\\\\d\\\\._v]+/',
                                                                                                'lookahead' => 0,
                                                                                                'rdelim' => '/',
                                                                                                'line' => 43,
                                                                                                'mod' => '',
                                                                                                'ldelim' => '/'
                                                                                              }, 'Parse::RecDescent::Token' )
                                                                                     ],
                                                                          'line' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'name' => 'version',
                                                    'vars' => '',
                                                    'line' => 41
                                                  }, 'Parse::RecDescent::Rule' ),
                              'use_stuff' => bless( {
                                                      'impcount' => 1,
                                                      'calls' => [
                                                                   '_alternation_1_of_production_1_of_rule_use_stuff'
                                                                 ],
                                                      'changed' => 0,
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => 0,
                                                                            'strcount' => 0,
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'subrule' => '_alternation_1_of_production_1_of_rule_use_stuff',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => 'base, or pragma, or version, or module',
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 8
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'use_stuff',
                                                      'vars' => '',
                                                      'line' => 8
                                                    }, 'Parse::RecDescent::Rule' ),
                              'import_list' => bless( {
                                                        'impcount' => 0,
                                                        'calls' => [
                                                                     'list_item',
                                                                     'comma_list_item'
                                                                   ],
                                                        'changed' => 0,
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'number' => 0,
                                                                              'strcount' => 0,
                                                                              'dircount' => 0,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 2,
                                                                              'actcount' => 1,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'pattern' => '[(]?',
                                                                                                    'hashname' => '__PATTERN1__',
                                                                                                    'description' => '/[(]?/',
                                                                                                    'lookahead' => 0,
                                                                                                    'rdelim' => '/',
                                                                                                    'line' => 49,
                                                                                                    'mod' => '',
                                                                                                    'ldelim' => '/'
                                                                                                  }, 'Parse::RecDescent::Token' ),
                                                                                           bless( {
                                                                                                    'subrule' => 'list_item',
                                                                                                    'matchrule' => 0,
                                                                                                    'implicit' => undef,
                                                                                                    'argcode' => undef,
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 50
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'subrule' => 'comma_list_item',
                                                                                                    'expected' => undef,
                                                                                                    'min' => 0,
                                                                                                    'argcode' => undef,
                                                                                                    'max' => 100000000,
                                                                                                    'matchrule' => 0,
                                                                                                    'repspec' => 's?',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 51
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'pattern' => '[)]?',
                                                                                                    'hashname' => '__PATTERN2__',
                                                                                                    'description' => '/[)]?/',
                                                                                                    'lookahead' => 0,
                                                                                                    'rdelim' => '/',
                                                                                                    'line' => 52,
                                                                                                    'mod' => '',
                                                                                                    'ldelim' => '/'
                                                                                                  }, 'Parse::RecDescent::Token' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 53,
                                                                                                    'code' => '{ $return=$item[2];
		  $return.=" ".join(" ",@{$item[3]}) if $item[3];
		}'
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'name' => 'import_list',
                                                        'vars' => '',
                                                        'line' => 49
                                                      }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_use_stuff' => bless( {
                                                                                             'impcount' => 0,
                                                                                             'calls' => [
                                                                                                          'base',
                                                                                                          'pragma',
                                                                                                          'version',
                                                                                                          'module'
                                                                                                        ],
                                                                                             'changed' => 0,
                                                                                             'opcount' => 0,
                                                                                             'prods' => [
                                                                                                          bless( {
                                                                                                                   'number' => 0,
                                                                                                                   'strcount' => 0,
                                                                                                                   'dircount' => 0,
                                                                                                                   'uncommit' => undef,
                                                                                                                   'error' => undef,
                                                                                                                   'patcount' => 0,
                                                                                                                   'actcount' => 0,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'subrule' => 'base',
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'line' => 65
                                                                                                                                       }, 'Parse::RecDescent::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => undef
                                                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                                                          bless( {
                                                                                                                   'number' => 1,
                                                                                                                   'strcount' => 0,
                                                                                                                   'dircount' => 0,
                                                                                                                   'uncommit' => undef,
                                                                                                                   'error' => undef,
                                                                                                                   'patcount' => 0,
                                                                                                                   'actcount' => 0,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'subrule' => 'pragma',
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'line' => 65
                                                                                                                                       }, 'Parse::RecDescent::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => 65
                                                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                                                          bless( {
                                                                                                                   'number' => 2,
                                                                                                                   'strcount' => 0,
                                                                                                                   'dircount' => 0,
                                                                                                                   'uncommit' => undef,
                                                                                                                   'error' => undef,
                                                                                                                   'patcount' => 0,
                                                                                                                   'actcount' => 0,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'subrule' => 'version',
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'line' => 65
                                                                                                                                       }, 'Parse::RecDescent::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => 65
                                                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                                                          bless( {
                                                                                                                   'number' => 3,
                                                                                                                   'strcount' => 0,
                                                                                                                   'dircount' => 0,
                                                                                                                   'uncommit' => undef,
                                                                                                                   'error' => undef,
                                                                                                                   'patcount' => 0,
                                                                                                                   'actcount' => 0,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'subrule' => 'module',
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'line' => 65
                                                                                                                                       }, 'Parse::RecDescent::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => 65
                                                                                                                 }, 'Parse::RecDescent::Production' )
                                                                                                        ],
                                                                                             'name' => '_alternation_1_of_production_1_of_rule_use_stuff',
                                                                                             'vars' => '',
                                                                                             'line' => 65
                                                                                           }, 'Parse::RecDescent::Rule' ),
                              'token_require' => bless( {
                                                          'impcount' => 0,
                                                          'calls' => [
                                                                       'require_stuff'
                                                                     ],
                                                          'changed' => 0,
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'number' => 0,
                                                                                'strcount' => 1,
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'error' => undef,
                                                                                'patcount' => 1,
                                                                                'actcount' => 1,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'pattern' => '\\brequire\\s',
                                                                                                      'hashname' => '__PATTERN1__',
                                                                                                      'description' => '/\\\\brequire\\\\s/',
                                                                                                      'lookahead' => 0,
                                                                                                      'rdelim' => '/',
                                                                                                      'line' => 26,
                                                                                                      'mod' => '',
                                                                                                      'ldelim' => '/'
                                                                                                    }, 'Parse::RecDescent::Token' ),
                                                                                             bless( {
                                                                                                      'subrule' => 'require_stuff',
                                                                                                      'matchrule' => 0,
                                                                                                      'implicit' => undef,
                                                                                                      'argcode' => undef,
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 26
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'pattern' => ';',
                                                                                                      'hashname' => '__STRING1__',
                                                                                                      'description' => '\';\'',
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 26
                                                                                                    }, 'Parse::RecDescent::Literal' ),
                                                                                             bless( {
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 27,
                                                                                                      'code' => '{ $return=$item{require_stuff} }'
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'line' => undef
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'name' => 'token_require',
                                                          'vars' => '',
                                                          'line' => 24
                                                        }, 'Parse::RecDescent::Rule' ),
                              'require_name' => bless( {
                                                         'impcount' => 0,
                                                         'calls' => [],
                                                         'changed' => 0,
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'number' => 0,
                                                                               'strcount' => 0,
                                                                               'dircount' => 1,
                                                                               'uncommit' => undef,
                                                                               'error' => undef,
                                                                               'patcount' => 0,
                                                                               'actcount' => 1,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'hashname' => '__DIRECTIVE1__',
                                                                                                     'name' => '<perl_quotelike>',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 31,
                                                                                                     'code' => 'my ($match,@res);
                     ($match,$text,undef,@res) =
                          Text::Balanced::extract_quotelike($text,$skip);
                      $match ? \\@res : undef;
                    '
                                                                                                   }, 'Parse::RecDescent::Directive' ),
                                                                                            bless( {
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 32,
                                                                                                     'code' => '{ my $name=$item[1][2];
		  return 1 if ($name=~/\\.pl$/);
		  $name=~s(/)(::)g;
		  $name=~s/\\.pm//;
		  $return=$name;
		}'
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'line' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'name' => 'require_name',
                                                         'vars' => '',
                                                         'line' => 31
                                                       }, 'Parse::RecDescent::Rule' )
                            },
                 '_AUTOTREE' => undef,
                 '_check' => {
                               'thisoffset' => '',
                               'itempos' => '',
                               'prevoffset' => '',
                               'prevline' => '',
                               'prevcolumn' => '',
                               'thiscolumn' => ''
                             },
                 '_AUTOACTION' => undef
               }, 'Parse::RecDescent' );
}