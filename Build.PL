
use strict;
use warnings;

use Module::Build 0.3601;

my $class = Module::Build->subclass(code => <<'EOF');
use File::Copy;
use File::Spec::Functions;
sub process_grammar_files {
    my $self = shift;
    my $grammar='Grammar.pm';

    # precompile grammar
    system("$^X -MParse::RecDescent - grammar Module::ExtractUse::Grammar");

    # add $VERSION to grammer
    open(my $fh,'<',$grammar) || die "cannot read $grammar: $!";
    my @content = <$fh>;
    close $fh;
    splice(@content,1,0,'our $VERSION=##{$version##};'."\n");
    open(my $out,">",$grammar) || die "cannot write $grammer: $!";
    print $out @content;
    close $out;

    # move Grammer.pm to right place
    my $target = catfile(qw(lib Module ExtractUse),$grammar);
    move($grammar, $target) || die "Could not move precompiled $grammar to lib/Module/ExtractUse/Grammer.pm: $!";
}

EOF

my %module_build_args = (
##{ $plugin->get_prereqs ##}
##{$plugin->get_default('dist_abstract')##}
##{$plugin->get_default('dist_author')##}
  'dist_name' => '##{$dist##}',
  'dist_version' => '##{$version##}',
  ##{$plugin->get_default('license')##}
  ##{$plugin->get_default('module_name')##}
  'module_name' => 'Module::ExtractUse',
  'recursive_test_files' => 1,
);

my $build = $class->new(%module_build_args);
$build->add_build_element('grammar');

$build->create_build_script;
