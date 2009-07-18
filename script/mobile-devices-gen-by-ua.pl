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

use Mobile::Devices::Loop::GetOptions;
use File::Basename 'dirname';
use File::Path 'mkpath';
use FindBin '$Bin';
use Pod::Usage;

use Mobile::Devices::Base;


exit main();

sub main {  
    my $loop_options = Mobile::Devices::Loop::GetOptions->new() or pod2usage();
    my $lib_folder   = $loop_options->lib_folder;
    my $devices_loop = $loop_options->devices_loop;
    my $devices      = $loop_options->devices;
    
    while (my $device = $devices_loop->next_device()) {
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
