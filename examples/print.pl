#!/usr/bin/perl

use Mobile::Devices::Loop;
    
use strict;
use version;

exit main();

sub main {  
    my $device_loop = Mobile::Devices::Loop->new(
        wurfl_xml_filename => 'tmp/wurfl.xml',
    );
    
    while (my $device = $device_loop->next_device()) {
        print '----------------', "\n";
        print 'id:', $device->{'id'}, "\n";
        print 'fall_back:', $device->{'fall_back'}, "\n";
        
        print 'user_agent: ', $device->{'user_agent'}, "\n"
            if $device->{'user_agent'};
        
        my %capabilities = map {
                map {
                    $_->{'name'} => $_->{'value'}
                } @{$_->{'capability'}}
            } @{$device->{'group'}}
        ;
        print 'model_name: ', $capabilities{'model_name'}, "\n"
            if $capabilities{'model_name'};
        
    }

    return 0;
}
