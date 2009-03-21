package Mobile::Devices::Loop;

=head1 NAME

Mobile::Devices::Loop - loop through WURFL mobile devices

=head1 SYNOPSIS

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

=head1 DESCRIPTION

Allows to loop through mobile devices stored in WURFL and get their
properties and capabilities.

=cut

use warnings;
use strict;

use XML::LibXML::Reader;
use XML::Compile::Schema;
use FindBin '$Bin';
use File::Spec;
use File::Basename 'dirname';

our $VERSION = '0.01';

use base 'Class::Accessor::Fast';

=head1 PROPERTIES

	wurfl_xml_filename
	wurfl_schema_filename

=cut

__PACKAGE__->mk_accessors(qw{
	wurfl_xml_filename
	wurfl_schema_filename
	version
	_xml_reader
	_device_reader
});

=head1 METHODS

=head2 new()

Object constructor.

=cut

sub new {
    my $class = shift;
    
    my %defaults = (
    	'wurfl_xml_filename'    => File::Spec->catfile($Bin, 'wurfl.xml'),
    	'wurfl_schema_filename' => File::Spec->catfile(
    		dirname(
    			$INC{File::Spec->catfile('Mobile', 'Devices', 'Loop.pm')}
    		),
    		'wurfl.xsd',
    	),
    );
    
    my $self  = $class->SUPER::new({ %defaults, @_ });
    
    my $reader    = XML::LibXML::Reader->new(location => $self->wurfl_xml_filename)
        or die 'cannot read "'.$self->wurfl_xml_filename.'"'."\n";
    $self->_xml_reader($reader);
    
    my $xs_schema = XML::Compile::Schema->new($self->wurfl_schema_filename);
    my $version_reader = $xs_schema->compile(READER => 'version');
    $self->_device_reader($xs_schema->compile(READER => 'device'));
    
	# get the version informations
	die 'fail to find version information'
		if not $reader->nextElement('version');
	my $version_dom = $reader->copyCurrentNode(1);
	$self->version($version_reader->($version_dom));
	
    return $self;
}


=head2 next_device

Return hash of next device.

=cut

sub next_device {
	my $self = shift;
	
	my $reader = $self->_xml_reader;
	
	return
    	if (not $reader->nextElement('device'));
    
	my $device_dom = $reader->copyCurrentNode(1);
	return $self->_device_reader->($device_dom);
}


=head2 version

Return hash of WURFL version.

=head2 version_date

Returns WURFL version date, like '2009-02-09'.

=cut

sub version_date {
	my $self = shift;

	my $version_string = $self->version->{'ver'};
	die 'failed to parse version date from "'.$version_string.'"'
		if ( $version_string !~ m/\s(\d{4})-(\d\d)-(\d\d)\s/xms);
	
	return $1.'.'.$2.'.'.$3;
}

1;


__END__

=head1 SEE ALSO

L<Mobile::Devices>,
L<http://wurfl.sf.net/>,
L<Mobile::Wurfl>, L<Mobile::WURFL>

=head1 AUTHOR

Jozef Kutej

=cut
