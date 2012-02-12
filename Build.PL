use strict;
use 5.008;
use Module::Build;
use File::Spec::Functions;

my $build = Module::Build->new(
    module_name => 'Module::ExtractUse',
    license     => 'perl',
    requires    => {
        'perl'  => '5.008',
        'Parse::RecDescent'=>'1.94',
        'Pod::Strip'=>'1.00',
    },
	build_requires=> {
        'Test::More'=>'0',
        'Test::Deep'=>'0.087',
        'Test::NoWarnings'=>'0',
        'Test::Pod'=>'0',
        'Test::Pod::Coverage'=>'0',
        'UNIVERSAL::require'=>'0',
    },
    create_makefile_pl=>'passthrough',
);

$build->create_build_script;

