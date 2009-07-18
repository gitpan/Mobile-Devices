#!/usr/bin/perl

=head1 NAME

mobile-devices-fresh-wurfl.pl - fetch wurfl.xml

=head1 SYNOPSIS

    generate-list-of-uas-ids.pl
        --wurfl wurfl.xml
            set the filename where wurfl.xml is stored
        --lib /path/to/lib/
            base path where to generate Mobile/Devices/UAs.pm and Mobile/Devices/IDs.pm

=head1 DESCRIPTION

=cut

use strict;
use version;

use Pod::Usage;
use LWP::Simple qw(mirror is_success status_message $ua RC_NOT_MODIFIED);
use File::Spec;
use File::Temp;
use File::Copy 'copy';
use Archive::Extract;
use Archive::Zip;

use Mobile::Devices::Loop::GetOptions;


our $WURFL_URL = 'http://switch.dl.sourceforge.net/sourceforge/wurfl/wurfl-latest.zip';

exit main();

sub main {
    my $loop_options       = Mobile::Devices::Loop::GetOptions->new() or pod2usage();
    my $wurfl_folder       = $loop_options->wurfl_folder;
    my $wurfl_filename     = $loop_options->wurfl_filename;
    my $wurfl_zip_filename = File::Spec->catfile($wurfl_folder, 'wurfl.zip');;
    die 'no such folder or not writable "'.$wurfl_folder.'"'."\n"
        if (not -w $wurfl_folder);

    # mirror latest zipped wurfl xml file
    my $status_code = mirror($WURFL_URL, $wurfl_zip_filename);
    if ($status_code == RC_NOT_MODIFIED) {
        return 0
            if (-f $wurfl_filename)
    }
    elsif (not is_success($status_code)) {
        die 'error: ', $status_code, ' ', status_message($status_code), ' (', $WURFL_URL, ')', "\n";
    }
    
    my $tmp_folder = File::Temp->newdir(CLEANUP => 1);
    my $ae = Archive::Extract->new( archive => $wurfl_zip_filename );
    $ae->extract( to => $tmp_folder ) or die 'failed to extract "'.$wurfl_zip_filename.'" - '.$ae->error;
    
    my $wurfl_tmp_filename = File::Spec->catfile($tmp_folder, 'wurfl.xml');
    
    # TODO validate xml against wurfl schema
    
    copy(
        $wurfl_tmp_filename,
        $wurfl_filename.'.tmp',
    ) or die 'failed to cp "'.$wurfl_tmp_filename.'" to "'.$wurfl_filename.'.tmp" - '.$!;
    rename(
        $wurfl_filename.'.tmp',
        $wurfl_filename,
    ) or die 'failed to mv "'.$wurfl_filename.'.tmp" to "'.$wurfl_filename.'" - '.$!;

    return 0;
}
