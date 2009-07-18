#!/usr/bin/perl

=head1 NAME

mobile-devices-gen-list-of-uas-ids.pl - generate UAs.pm and IDs.pm with list of all user-agent-s and wurfl id-s

=head1 SYNOPSIS

    mobile-devices-gen-list-of-uas-ids.pl
        --wurfl wurfl.xml
            set the filename where wurfl.xml is stored
        --lib /path/to/lib/
            base path where to generate Mobile/Devices/UAs.pm and Mobile/Devices/IDs.pm

=head1 DESCRIPTION

=cut

use strict;
use version;

use Template;
use File::Spec;
use FindBin '$Bin';
use Pod::Usage;

use Mobile::Devices::Loop::GetOptions;


exit main();

sub main {  
    my $loop_options = Mobile::Devices::Loop::GetOptions->new() or pod2usage();
    my $lib_folder   = $loop_options->lib_folder;
    my $devices_loop = $loop_options->devices_loop;

    my $template = Template->new({
        PRE_CHOMP    => 1,
        POST_CHOMP   => 0,
    });
    
    my $uas_pm_filename = File::Spec->catfile($lib_folder, 'Mobile', 'Devices', 'UAs.pm');
    my $ids_pm_filename = File::Spec->catfile($lib_folder, 'Mobile', 'Devices', 'IDs.pm');
    
    my @uas;
    my @ids;
    while (my $device = $devices_loop->next_device()) {
        my $ua = $device->{'user_agent'};
        $ua =~ s/'/\\'/g;
        push @uas, $ua
            if $ua;
        push @ids, $device->{'id'}
            if $device->{'id'};
    }
    
    $template->process(
        template(),
        {
            'type'    => 'UAs',
            'version' => $devices_loop->version_date,
            'all'     => \@uas,
        },
        $uas_pm_filename,
    ) || die $template->error();
    $template->process(
        template(),
        {
            'type'    => 'IDs',
            'version' => $devices_loop->version_date,
            'all'     => \@ids,
        },
        $ids_pm_filename,
    ) || die $template->error();

    return 0;
}


sub template {
return \q|package Mobile::Devices::[% type %];

=head1 NAME

Mobile::Devices::[% type %]

=head1 DESCRIPTION

Complete list of WURFL [% type %].

=cut

use strict;
use warnings;

our $VERSION = '[% version %]';


=head1 METHODS

=head2 all

Returns array ref pointing to all [% type %].

=cut

sub all {
	return [
[% FOREACH item IN all %]
		'[% item %]',
[% END %]
	];
}

1;
|;
}
