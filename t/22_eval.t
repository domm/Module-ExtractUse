use Test::More tests => 11;

use strict;
use warnings;

use Module::ExtractUse;

{
    my $semi   = 'eval "use Test::Pod 1.00;";';
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$semi );

    ok( $p->used( 'Test::Pod' ) );
}

{
    my $nosemi = "eval 'use Test::Pod 1.00';";
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$nosemi );

    ok( $p->used( 'Test::Pod' ) );
}

{
    my $qq = "eval qq{use Test::Pod 1.00}";
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$qq );
    ok( $p->used( 'Test::Pod' ), 'qq brace' );
}

{
    my $qq = "eval qq+use Test::Pod+";
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$qq );
    ok( $p->used( 'Test::Pod' ), 'qq plus' );
}

{
    my $qq = "eval qq(use Test::Pod)";
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$qq );
    ok( $p->used( 'Test::Pod' ), 'qq paren' );
}

{
    my $q = "eval q< use Test::Pod>";
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$q );
    ok( $p->used( 'Test::Pod' ), 'q angle' );
}

{
    my $q = "eval  q/use Test::Pod/";
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$q );
    ok( $p->used( 'Test::Pod' ), 'q slash' );
}

# reported by DAGOLDEN@cpan.org as [rt.cpan.org #19302]
{
    my $varversion = q{my $ver=1.22;
eval "use Test::Pod $ver;"};
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$varversion );

    ok( $p->used( 'Test::Pod' ) );
}

{
    my $varversion = q{my $ver=1.22;
eval 'use Test::Pod $ver';};
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$varversion );

    ok( $p->used( 'Test::Pod' ) );
}


{
    my $semi   = 'eval"use Test::Pod 1.00;";';
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$semi );

    ok( $p->used( 'Test::Pod' ), 'no spaces between eval and expr with semicolon' );
}

{
    my $nosemi = "eval'use Test::Pod 1.00';";
    my $p = Module::ExtractUse->new;
    $p->extract_use( \$nosemi );

    ok( $p->used( 'Test::Pod' ), 'no spaces between eval and expr w/o semicolon' );
}
