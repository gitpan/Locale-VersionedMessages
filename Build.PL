use Module::Build;
use strict;
use warnings;

my %requires = (
                 'perl'                     => '5.010000',
                 'File::Path'               => '0',
                 'IO::File'                 => '0',
               );
my %build_mods = (
                 'Test::Inter'              => '1.04',
                 'lib'                      => '0',
               );


my $class = Module::Build->subclass(
   class => "Module::Build::Custom",
   code  => q { sub ACTION_html { my $self = shift ; $self->SUPER::ACTION_html ( @_ ) if ( $ENV{ MAKE_HTML } ) ; } }
);

my $build = $class->new(
        license            => 'perl',
        dist_version       => '0.91',
        dist_author        => 'Sullivan Beck <sbeck@cpan.org>',
        module_name        => 'Locale::VersionedMessages',
        dist_abstract      => 'handle all aspects of the localization process',
        requires           => \%requires,
        build_requires     => \%build_mods,
        sign               => 1,
        script_files => [
           'bin/lm_gui',
        ],
);

$build->create_build_script;
