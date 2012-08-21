#!/usr/bin/perl -w
use strict;
use Test::More;
use Test::Deep;
use Test::NoWarnings;
use Module::ExtractUse;

my @tests=
  (
#1
   ['useSome::Module1;',undef],
   ['use Some::Module2;',[qw(Some::Module2)]],
   ["yadda yadda useless stuff;".'use Some::Module3 qw/$VERSION @EXPORT @EXPORT_OK/;',[qw(Some::Module3)]],
   ['use base qw(Class::DBI4 Foo::Bar5);',[qw(Class::DBI4 Foo::Bar5)]],
   ['if ($foo) { use Foo::Bar6; }',[qw(Foo::Bar6)]],
#6
   ['use constant dl_ext => ".$Config{dlext}";',[qw(constant)]],
   ['use strict;',[qw(strict)]],

   ['use Foo8 qw/asdfsdf/;',[qw(Foo8)]],
   ['$use=stuff;',undef],
   ['abuse Stuff;',undef],
#11
   ['package Module::ScanDeps;',undef],
   ['if ($foo) { require "Bar7"; }',[qw(Bar7)]],
   ['require "some/stuff.pl";',undef],
   ['require "Foo/Bar.pm9";',[qw(Foo::Bar9)]],
   ['require Foo10;',['Foo10']],
#16
   ["use Some::Module11;use Some::Other::Module12;",[qw(Some::Module11 Some::Other::Module12)]],
   ["use Some::Module;\nuse Some::Other::Module;",[qw(Some::Module Some::Other::Module)]],
   ['use vars qw/$VERSION @EXPORT @EXPORT_OK/;',[qw(vars)]],
   ['unless ref $obj;  # use ref as $obj',undef],
   ['$self->_carp("$name trigger deprecated: use before_$name or after_$name instead");',undef],
#21
   ["use base 'Exporter1';",['Exporter1']],
   ['use base ("Class::DBI2");',['Class::DBI2']],
   ['use base "Class::DBI3";',['Class::DBI3']],
   ['use base qw/Class::DBI4 Foo::Bar5/;',[qw(Class::DBI4 Foo::Bar5)]],
   ['use base ("Class::DBI6","Foo::Bar7");',[qw(Class::DBI6 Foo::Bar7)]],
#26
   ['use base "Class::DBI8","Foo::Bar9";',[qw(Class::DBI8 Foo::Bar9)]],
   ['eval "use Test::Pod 1.06";',['Test::Pod']],
   [q{#!/usr/bin/perl -w
use strict;
use Test::More;
eval "use Test::Pod 1.06";
eval 'use Test::Pod::Coverage 1.06;';
plan skip_all => "Test::Pod 1.06 required for testing POD" if $@;
all_pod_files_ok();},[qw(strict Test::More Test::Pod Test::Pod::Coverage)]],
    # reported & fixed by barbie (b56e244da)
   ["use base qw( Data::Phrasebook::Loader::Base Data::Phrasebook::Debug );",[qw(Data::Phrasebook::Loader::Base Data::Phrasebook::Debug)]],
);


plan tests => (scalar @tests)+1;


foreach my $t (@tests) {
    my ($code,$expected)=@$t;
    my $p=Module::ExtractUse->new;
    my $used=$p->extract_use(\$code)->arrayref;

    if (ref($expected) eq 'ARRAY') {
        cmp_bag($used,$expected);
    } elsif (!defined $expected) {
        is(undef,$used,'');
    } else {
        is($used,$expected);
    }
}



