package Mobile::Devices::byID::s::ri::sonyericsson_z1010_ver1_subr101;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::s::ye::sonyericsson_z1010_ver1';



sub wurfl_id   { 'sonyericsson_z1010_ver1_subr101' };
sub user_agent { 'SonyEricssonZ1010/R101 Profile/MIDP-2.0 Configuration/CLDC-1.0' };
sub fall_back  { Mobile::Devices::byID::s::ye::sonyericsson_z1010_ver1->new() }
# group id: bearer
sub max_data_rate { '384' };



1;

__END__

