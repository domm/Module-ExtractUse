#!/usr/bin/perl -w
use strict;
use Test::More;
use Test::NoWarnings;
use Module::ExtractUse;

plan tests => 3 + 1;

# Text::ANSITable
my $code = 'require "Text/ANSITable/StyleSet/$name.pm";';

my $p = Module::ExtractUse->new;
$p->extract_use(\$code);

ok( ! $p->used( 'Text::ANSITable::StyleSet::$name' ) );
ok( ! $p->used_in_eval( 'Text::ANSITable::StyleSet::$name' ) );
ok( ! $p->used_out_of_eval( 'Text::ANSITable::StyleSet::$name' ) );
