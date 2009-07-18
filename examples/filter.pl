#!/usr/bin/perl

use Mobile::Devices::Loop;
use File::Slurp 'read_file';
use List::MoreUtils 'none';

use strict;
use version;

exit main();

sub main {
    my @keep_ids = map { chomp; $_; } read_file('tmp/sony-apple-ids.txt');
    my $device_loop = Mobile::Devices::Loop->new(
        wurfl_xml_filename => 'tmp/wurfl.xml',
    );
    
    while (my $device = $device_loop->next_device()) {
        next
            if none { $device->{'id'} eq $_ } @keep_ids;
        print "  ", $device->{'dom'}->toString(), "\n";
    }

    return 0;
}
