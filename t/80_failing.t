#!/usr/bin/perl -w
use strict;
use Test::More skip_all=>'parser is known to not catch those';
use Module::ExtractUse;

my $p=Module::ExtractUse->new;

my @tests=
  (
   ['use base (Class::DBI,FooBar);','Class::DBI Foo::Bar'],
   ['use constant lib_ext => $Config{lib_ext};','constant'],
  );

plan tests => scalar @tests;


foreach my $t (@tests) {
    my ($code,$expected)=@$t;
    my $used=$p->extract_use(\$code)->string;
    if ($used) {
        is($used,$expected,'');
    } else {
        is(undef,$expected,'');
    }
}



