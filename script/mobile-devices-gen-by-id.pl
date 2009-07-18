#!/usr/bin/perl

=head1 NAME

mobile-devices-gen-by-id.pl - generate Mobile/Devices/byID/

=head1 SYNOPSIS

    mobile-devices-gen-by-id.pl
        --wurfl wurfl.xml
            set the filename where wurfl.xml is stored
        --lib /path/to/lib/
            base path where to generate Mobile/Devices/byID/

=head1 DESCRIPTION

=cut

use strict;
use version;

use Mobile::Devices::Loop::GetOptions;
use File::Path 'mkpath';
use FindBin '$Bin';
use Template;
use Pod::Usage;
use File::Basename 'dirname';


exit main();

sub main {  
    my $loop_options = Mobile::Devices::Loop::GetOptions->new() or pod2usage();
    my $lib_folder   = $loop_options->lib_folder;
    my $devices_loop = $loop_options->devices_loop;
    my $devices      = $loop_options->devices;

    my $template = Template->new({
        PRE_CHOMP    => 1,
        POST_CHOMP   => 0,
    });
    
    while (my $device = $devices_loop->next_device()) {
        my $id = $device->{'id'};
        die 'missing id'
            if not defined $id;

    	my $package_name = $devices->id_to_modulename($device->{'id'});
    	my $extends      = $devices->id_to_modulename($device->{'fall_back'});
    	my $pm_filename  = $devices->id_to_filename($device->{'id'});
    	my $pm_dirname   = dirname($pm_filename);

    	mkpath($pm_dirname) or die 'failed to create "'.$pm_dirname.'" - '.$!
    		if (not -d $pm_dirname);
    	
    	$template->process(
    		template(),
    		{
                'package_name' => $package_name,
                'version'      => $devices_loop->version_date,
                'extends'      => $extends,
                'device'       => $device,
    		},
    		$pm_filename,
    	) || die $template->error();
    }

    return 0;
}

sub template {
return \q!package [% package_name %];

use strict;
use warnings;

our $VERSION = '[% version %]';

[% IF device.id == 'generic' %]
use base 'Mobile::Devices::Base';

sub fall_back  { };
sub groups {
    return [
        [% FOREACH group IN device.group.sort('id') %]
        '[% group.id %]',
        [% END %]
    ];
}
sub capabilities {
    return [
        [% FOREACH group IN device.group %]
        [% FOREACH cap_name IN group.capability %]
        '[% cap_name.name %]',
        [% END %]
        [% END %]
    ];
}
sub group_capabilities {
    return {
        [% FOREACH group IN device.group %]
        '[% group.id %]' => [
            [% FOREACH cap_name IN group.capability.sort('name') %]
                '[% cap_name.name %]',
            [% END %]
        ],
        [% END %]
    };
}
sub capability_group {
    return {
        [% FOREACH group IN device.group %]
        [% FOREACH cap_name IN group.capability %]
            '[% cap_name.name %]' => '[% group.id %]',
        [% END %]
        [% END %]
    };
}

[% ELSE %]
use base '[% extends %]';
sub fall_back  { [% extends %]->new() };
[% END %]

sub wurfl_id   { '[% device.id | replace("'", "\\\'") %]' };
sub user_agent { '[% device.user_agent | replace("'", "\\\'") %]' };
[% FOREACH group IN device.group %]
# group id: [% group.id %]
[% FOREACH cap_name IN group.capability %]
sub [% cap_name.name %] { '[% cap_name.value | replace("'", "\\\'") %]' };
[% END %]
[% END %]

1;
!;
}
