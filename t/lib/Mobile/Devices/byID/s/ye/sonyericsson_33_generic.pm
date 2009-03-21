package Mobile::Devices::byID::s::ye::sonyericsson_33_generic;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::s::ye::sonyericsson_30_generic';



sub wurfl_id   { 'sonyericsson_33_generic' };
sub user_agent { 'SonyEricsson XHTML Browser 3.3' };
sub fall_back  { Mobile::Devices::byID::s::ye::sonyericsson_30_generic->new() }
# group id: image_format
sub png { 'true' };



1;

__END__

