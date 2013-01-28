#!/usr/bin/perl -w
use strict;
use Test::More tests=>13;
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
    @used=$p->extract_use($0)->optional_array;
    cmp_deeply(\@used,
	       [],
	       'optional modules used in this test script'
	      );
    @used=$p->extract_use($0)->mandatory_array;
    cmp_deeply(\@used,
	       bag(qw(strict Test::More Test::Deep Test::NoWarnings Module::ExtractUse)),
	       'mandatory modules used in this test script'
	      );
}

# test Module::ExtractUse
{
    my $p=Module::ExtractUse->new;
    $p->extract_use('lib/Module/ExtractUse.pm');
    cmp_deeply($p->arrayref,
	       bag(qw(strict warnings Pod::Strip Parse::RecDescent Module::ExtractUse::Grammar Carp 5.008)),
	       'modules used in this Module::ExtractUsed');
    cmp_deeply([$p->optional_arrayref],
	       [],
	       'optional modules used in this Module::ExtractUsed');
    cmp_deeply($p->mandatory_arrayref,
	       bag(qw(strict warnings Pod::Strip Parse::RecDescent Module::ExtractUse::Grammar Carp 5.008)),
	       'mandatory modules used in this Module::ExtractUsed');

    my $used=$p->used;
    is($used->{'strict'},1,'strict via hash lookup');

    is($p->used('strict'),1,'strict via used method');

    my $optional_used=$p->optional_used;
    is(!$optional_used->{'strict'},1,'strict via optional hash lookup');

    is(!$p->optional_used('strict'),1,'strict via optional_used method');

    my $mandatory_used=$p->mandatory_used;
    is($mandatory_used->{'strict'},1,'strict via mandatory hash lookup');

    is($p->mandatory_used('strict'),1,'strict via mandatory_used method');

}



