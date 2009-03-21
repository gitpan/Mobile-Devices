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

use Mobile::Devices::Loop;
    
use strict;
use version;

use Template;
use File::Spec;
use FindBin '$Bin';
use File::Basename 'dirname';

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

    my $template = Template->new({
        PRE_CHOMP    => 1,
        POST_CHOMP   => 0,
    });
    
    my $uas_pm_filename = File::Spec->catfile($lib_folder, 'Mobile', 'Devices', 'UAs.pm');
    my $ids_pm_filename = File::Spec->catfile($lib_folder, 'Mobile', 'Devices', 'IDs.pm');
    
    my @uas;
    my @ids;
    while (my $device = $device_loop->next_device()) {
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
            'version' => $device_loop->version_date,
            'all'     => \@uas,
        },
        $uas_pm_filename,
    ) || die $template->error();
    $template->process(
        template(),
        {
            'type'    => 'IDs',
            'version' => $device_loop->version_date,
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
