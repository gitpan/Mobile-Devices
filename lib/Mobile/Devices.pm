package Mobile::Devices;

=head1 NAME

Mobile::Devices - search for and get mobile device information

=head1 SYNOPSIS

    use Mobile::Devices;
    
    my $devices = Mobile::Devices->new('search_base' => File::Spec->catfile($Bin, 'wurfl-data'));
    my $device  = $devices->search( 'id' => 'nokia_6131nfc_ver1' );
    my $device2 = $devices->search( 'user_agent' => 'Nokia6131NFC' );

=head1 DESCRIPTION

Search for and get mobile device information. Data are from WURFL.

=cut

use warnings;
use strict;

our $VERSION = '0.02';

use base 'Class::Accessor::Fast';
use File::Spec;
use Carp;
use FindBin '$Bin';
use File::Slurp 'read_file';
use File::Basename 'dirname';

=head1 PROPERTIES

=head2 search_base

Sets the folder where generated files (
F<Mobile/Device/IDs.pm>,
F<Mobile/Device/IDs/*>,
F<Mobile/Device/UAs.pm>,
F<Mobile/Device/UAs/*>,
F<Mobile/Device/wurfl.xml>,
F<Mobile/Device/wurfl.zip>,
) will be looked for.

By default its C<dirname($INC{'Mobile/Devices.pm'})> - location of this
module.

=cut

__PACKAGE__->mk_accessors(qw{
    search_base
});

=head1 METHODS

=head2 new()

Object constructor.

=cut

sub new {
    my $class = shift;
    
    my %defaults = (
        'search_base' => dirname($INC{File::Spec->catfile('Mobile', 'Devices.pm')}),
    );
    
    my $self  = $class->SUPER::new({ %defaults, @_ });
    
    return $self;
}


=head2 search($by => $ident)

Lookup the module device. Either by c<ua> or by C<id>.

=cut

sub search {
    my $self   = shift;
    my $method = shift;
    
    return $self->search_by_ua(@_)
        if $method eq 'ua';
    return $self->search_by_id(@_)
        if $method eq 'id';
    
    croak 'search by "'.$method.'" not implemented'; 
}


=head2 search_by_id($id)

Lookup device by it's WURFL id string C<$id>.

=cut

sub search_by_id {
    my $self = shift;
    my $id   = shift;
    
    my $module_name = $self->id_to_modulename($id);
    if (not exists $INC{$self->id_to_filename($id)}) {
        eval 'require '.$module_name.';';
        croak 'failed to load "'.$module_name.'" '.$@
            if $@;
    }
    
    return $module_name->new();
}


=head2 search_by_ua($ua)

Lookup device by it's user-agent string C<$ua>.

=cut

sub search_by_ua {
    my $self = shift;
    my $ua   = shift;
    my $id   = $self->id_by_ua($ua);
    
    return if not defined $id;
    return $self->search_by_id($id);
}


=head2 id_by_ua($ua)

Returns WURFL id associated with C<$ua>.

=cut

sub id_by_ua {
    my $self = shift;
    my $ua   = shift;
    
    my $filename = $self->ua_to_filename($ua);
    
    # no such ua if no file
    return if not -f $filename;
    
    my $ua_length = length($ua)+2;
    my $lookup_ua = '"'.$ua.'"';
    
    # loop through lines of user agents and look for $ua
    foreach my $line (read_file($filename)) {
        next if substr($line,0,$ua_length) ne $lookup_ua;
        chomp($line);
        return substr($line,$ua_length+1);
    }
    
    return;
}


=head2 ua_to_filename($ua)

Returns filename where the C<$ua> to id mapping should be stored.

=cut

sub ua_to_filename {
    my $self = shift;
    my $ua   = lc shift;
    
    $ua = sprintf('%-6s', $ua)
        if length($ua) < 6;
    
    $ua =~ s/[^\w]/_/g;
    my $length = length($ua);
    
    use integer;
    return File::Spec->catfile($self->search_base, 'Mobile', 'Devices', 'byUA', substr($ua,0,1), substr($ua,($length / 6),2), substr($ua,($length / 2),3));
}


=head2 id_to_filename($id)

Returns filename where the WURFL information for device with C<$id> is
stored.

=cut

sub id_to_filename {
    my $self = shift;
    my $id   = shift;
    
    my @filename_path = $self->_id_to_relative_filename($id);
    my $filename = pop @filename_path;
    return File::Spec->catfile($self->search_base, @filename_path, $filename.'.pm');
}

sub _id_to_relative_filename {
    my $self = shift;
    my $id   = shift;
    
    $id =~ s/[^\w]/_/g;
    my $folder = lc $id;
    $folder = sprintf('%-6s', $folder)
        if length($folder) < 6;
    
    $folder =~ s/[^\w]/_/g;
    my $length = length($folder);
    
    use integer;
    return ('Mobile', 'Devices', 'byID', substr($folder,0,1), substr($folder,($length / 6),2), $id);
}


=head2 id_to_modulename($id)

Returns Perl module name where the wurfl information for device with
C<$id> is stored.

=cut

sub id_to_modulename {
    my $self = shift;
    my $id   = shift;
    
    return join('::', $self->_id_to_relative_filename($id));
}

1;


__END__

=head1 SEE ALSO

L<Mobile::Devices::Loop>,
L<http://wurfl.sf.net/>,
L<Mobile::Wurfl>, L<Mobile::WURFL>

=head1 AUTHOR

Jozef Kutej

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009 by Jozef Kutej

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.

=cut
