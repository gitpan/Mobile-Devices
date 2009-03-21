use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Mobile::Devices',
    license             => 'perl',
    dist_author         => 'Jozef Kutej <jozef@kutej.net>',
    dist_version_from   => 'lib/Mobile/Devices.pm',
    requires => {
        'XML::Compile::Schema'  => 0,
        'XML::LibXML::Reader'   => 0,
        'Template'              => 0,
        'Pod::Usage'            => 0,
        'LWP::Simple'           => 0,
        'Getopt::Long'          => 0,
        'Class::Accessor::Fast' => 0,
        'File::Basename'        => 0,
        'File::Copy'            => 0,
        'File::Path'            => 0,
        'File::Slurp'           => 0,
        'File::Spec'            => 0,
        'File::Temp'            => 0,
        'Archive::Extract'      => 0,
        'Archive::Zip'          => 0,
    },
    build_requires => {
        'Test::More'        => 0,
        'Test::Differences' => 0,
    },
    script_files => [
        'script/mobile-devices-fresh-wurfl.pl',
        'script/mobile-devices-gen-by-id.pl',
        'script/mobile-devices-gen-by-ua.pl',
        'script/mobile-devices-gen-list-of-uas-ids.pl',
    ],
    add_to_cleanup      => [ 'Mobile-Devices-*' ],
    create_makefile_pl => 'traditional',
    create_readme       => 1,
    sign                => 1,
);

$builder->create_build_script();
