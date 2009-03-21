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

use Mobile::Devices;
use Mobile::Devices::Loop;
use File::Basename 'dirname';
use File::Spec;
use File::Path 'mkpath';
use FindBin '$Bin';
use Template;
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
    my $template = Template->new({
        PRE_CHOMP    => 1,
        POST_CHOMP   => 0,
    });
    
    while (my $device = $device_loop->next_device()) {
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
                'version'      => $device_loop->version_date,
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
sub capabilities {
    return [
        [% FOREACH group IN device.group %]
        [% FOREACH cap_name IN group.capability %]
        '[% cap_name.name %]',
        [% END %]
        [% END %]
    ];
}

[% ELSE %]
use base '[% extends %]';
sub fall_back  { [% extends %]->new() };
[% END %]

sub wurfl_id   { '[% device.id | replace("'", "\\'") %]' };
sub user_agent { '[% device.user_agent | replace("'", "\\'") %]' };
[% FOREACH group IN device.group %]
# group id: [% group.id %]
[% FOREACH cap_name IN group.capability %]
sub [% cap_name.name %] { '[% cap_name.value | replace("'", "\\'") %]' };
[% END %]
[% END %]

1;
!;
}
