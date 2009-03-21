package Mobile::Devices::byID::e::ic::ericsson_generic;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::g::en::generic';



sub wurfl_id   { 'ericsson_generic' };
sub user_agent { 'Ericsson' };
sub fall_back  { Mobile::Devices::byID::g::en::generic->new() }
# group id: product_info
sub brand_name { 'Ericsson' };



1;

__END__

