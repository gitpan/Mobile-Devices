package Mobile::Devices::byID::s::ye::sonyericsson_40_generic;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::s::ye::sonyericsson_33_generic';



sub wurfl_id   { 'sonyericsson_40_generic' };
sub user_agent { 'SonyEricsson XHTML Browser 4.0' };
sub fall_back  { Mobile::Devices::byID::s::ye::sonyericsson_33_generic->new() }
# group id: image_format
sub svgt_1_1 { 'true' };
# group id: markup
sub xhtml_support_level { '1' };
# group id: xhtml_ui
sub xhtmlmp_preferred_mime_type { 'application/xhtml+xml' };



1;

__END__

