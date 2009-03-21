package Mobile::Devices::byID::s::id::stupid_novarra_nweb_generic;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::g::ne::generic_xhtml';



sub wurfl_id   { 'stupid_novarra_nweb_generic' };
sub user_agent { 'Novarra/5.' };
sub fall_back  { Mobile::Devices::byID::g::ne::generic_xhtml->new() }
# group id: product_info
sub mobile_browser { 'Novarra nWeb' };
sub model_name { 'nWeb Browser' };
sub brand_name { 'Novarra' };



1;

__END__

