package Mobile::Devices::Loop::GetOptions;

=head1 NAME

Mobile::Devices::Loop::GetOptions - get standard commandline options for Mobile::Devices::Loop

=head1 SYNOPSIS

    use Mobile::Devices::Loop::GetOptions;
    
    my $loop_options = Mobile::Devices::Loop::GetOptions->new();
    
    print $loop_options->lib_folder, "\n";
    print $loop_options->wurfl_filename, "\n";
    
    my $devices_loop = $loop_options->devices_loop;
    my $devices     = $loop_options->devices;

=head1 DESCRIPTION

Helper class to initialize and set parameters for command line scripts
that need to access Mobile::Devices::Loop and/or Mobile::Devices.

=cut

use strict;
use warnings;

our $VERSION = '0.01';

use base 'Class::Accessor::Fast';

use Getopt::Long;
use File::Spec;
use Mobile::Devices;
use Mobile::Devices::Loop;
use Mobile::Devices::Base;
use File::Basename 'dirname';


=head1 PROPERTIES

    lib_folder
    wurfl_filename

=cut

__PACKAGE__->mk_accessors(qw{
    lib_folder
    wurfl_filename
});


=head1 METHODS

=head2 new()

Object constructor. Any arguments of C<new()> will be passed to
L<Getopt::Long/GetOptions>.

=cut

sub new {
	my $class              = shift;
	my %get_options_params = @_;
	
	my $self = $class->SUPER::new();
	
    my $lib_folder = File::Spec->catfile(
        dirname($INC{File::Spec->catfile('Mobile', 'Devices', 'Base.pm')}),
        '..',
        '..',
    );
    my $wurfl_filename;
    my $help;
    GetOptions(
        'help|h'    => \$help,
        'wurfl|w=s' => \$wurfl_filename,
        'lib|l=s'   => \$lib_folder,
        %get_options_params,
    ) or return;
    return if $help;
    
    $wurfl_filename ||= File::Spec->catfile(
        $lib_folder,
        'Mobile', 'Devices', 'wurfl.xml',
    );
	
	# store all to accessors
	$self->lib_folder($lib_folder);
	$self->wurfl_filename($wurfl_filename);
	
	return $self;
}


=head2 wurfl_folder()

Returns folder where F<wurfl.xml> and generated F<.pm> files are located.

=cut

sub wurfl_folder {
    my $self = shift;
    return File::Spec->catfile($self->lib_folder, 'Mobile', 'Devices');
}


=head2 devices_loop()

Return L<Mobile::Devices::Loop> initialized initialized with C<<$self->wurfl_filename>>.

=cut

sub devices_loop {
    my $self = shift;
    return Mobile::Devices::Loop->new(
        wurfl_xml_filename => $self->wurfl_filename,
    );
}


=head2 devices()

Return L<Mobile::Devices> initilialized with C<<$self->lib_folder>>

=cut

sub devices {
    my $self = shift;
    return Mobile::Devices->new(
        'search_base' => $self->lib_folder,
    );
}

1;

__END__

=head1 AUTHOR

Jozef Kutej

=cut
