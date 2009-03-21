#!/usr/bin/perl

=head1 NAME

mobile-devices-gen-by-ua.pl - generate Mobile/Devices/byUA/

=head1 SYNOPSIS

    mobile-devices-gen-by-ua.pl
        --wurfl wurfl.xml
            set the filename where wurfl.xml is stored
        --lib /path/to/lib/
            base path where to generate Mobile/Devices/byUA/

=head1 DESCRIPTION

=cut

use strict;
use version;

use Mobile::Devices;
use Mobile::Devices::Loop;
use File::Basename 'dirname';
use File::Spec;
use File::Path 'mkpath';
use FindBin '$Bin';
use Getopt::Long;
use Pod::Usage;

use Mobile::Devices::Base;


exit main();

sub main {  
    my $help;
    my $wurfl_filename = File::Spec->catfile(
        dirname($INC{File::Spec->catfile('Mobile', 'Devices', 'Base.pm')}),
        'wurfl.xml',
    );
    my $lib_folder     = File::Spec->catfile(
        dirname($INC{File::Spec->catfile('Mobile', 'Devices', 'Base.pm')}),
        '..',
        '..',
    );
    GetOptions(
        'help|h'    => \$help,
        'wurfl|w=s' => \$wurfl_filename,
        'lib|l=s'   => \$lib_folder,
    ) or pod2usage;
    pod2usage if $help;

    my $device_loop = Mobile::Devices::Loop->new(
        wurfl_xml_filename => , $wurfl_filename,
    );
    my $devices = Mobile::Devices->new(
        'search_base' => $lib_folder,
    );
    
    while (my $device = $device_loop->next_device()) {
        next if not $device->{'user_agent'};
        
        my $filename = $devices->ua_to_filename($device->{'user_agent'});
        my $folder   = dirname($filename);
        
        mkpath($folder)
            if (not -d $folder);
        
        open(my $file, '>>', $filename);
        print $file '"', $device->{'user_agent'}, '";', $device->{'id'}, "\n";
    }

    return 0;
}
