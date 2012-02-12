#!/usr/bin/perl -w
use strict;
use Test::More tests=>5;
use Test::Deep;
use Test::NoWarnings;
use Module::ExtractUse;

# test testfile
{
    my $p=Module::ExtractUse->new;
    my @used=$p->extract_use($0)->array;
    cmp_deeply(\@used,
	       bag(qw(strict Test::More Test::Deep Test::NoWarnings Module::ExtractUse)),
	       'modules used in this test script'
	      );
}

# test Module::ExtractUse
{
    my $p=Module::ExtractUse->new;
    $p->extract_use('lib/Module/ExtractUse.pm');
    cmp_deeply($p->arrayref,
	       bag(qw(strict warnings Pod::Strip Parse::RecDescent Module::ExtractUse::Grammar Carp 5.008)),
	       'modules used in this Module::ExtractUsed');

    my $used=$p->used;
    is($used->{'strict'},1,'strict via hash lookup');

    is($p->used('strict'),1,'strict via used method');

}



