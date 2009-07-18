package Mobile::Devices::Base;

=head1 NAME

Mobile::Devices::Base - base class for all Mobile::Devices::byID::*

=head1 SYNOPSIS

    use base 'Mobile::Devices::Base';

=head1 DESCRIPTION

Base class that is used by Mobile::Devices::byID::g::en::generic which
is fallback for all WURFL devices.

=cut

use strict;
use warnings;

our $VERSION = '0.01';


=head1 METHODS

=head2 new()

Object constructor.

=cut

sub new {
	my $class = shift;
	return bless {}, $class;
}


=head2 TO_JSON

Return hash ref filled with all capabilities of a mobile device.

=cut

sub TO_JSON {
    my $self = shift;
    
    my %hash = (
        map  { my $v = $self->$_; (defined $v ? ($_ => $v) : ()) }
        (
            @{$self->capabilities},
            'user_agent',
            'wurfl_id',
        )
    );
    
    return \%hash;
}

1;

__END__

=head1 AUTHOR

Jozef Kutej

=cut
