package Mobile::Devices::byID::s::er::sonyericsson_xhtml_generic;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::s::ye::sonyericsson_generic';



sub wurfl_id   { 'sonyericsson_xhtml_generic' };
sub user_agent { 'SonyEricsson XHTML' };
sub fall_back  { Mobile::Devices::byID::s::ye::sonyericsson_generic->new() }
# group id: wml_ui
sub softkey_support { 'true' };
sub wml_displays_image_in_center { 'true' };
# group id: xhtml_ui
sub xhtml_make_phone_call_string { 'tel:' };
sub xhtml_display_accesskey { 'true' };
sub xhtml_table_support { 'true' };
sub xhtmlmp_preferred_mime_type { 'application/vnd.wap.xhtml+xml' };
sub xhtml_supports_table_for_layout { 'true' };
sub xhtml_format_as_css_property { 'true' };
# group id: markup
sub html_wi_oma_xhtmlmp_1_0 { 'true' };
sub html_wi_w3_xhtmlbasic { 'true' };
sub preferred_markup { 'html_wi_oma_xhtmlmp_1_0' };
sub xhtml_support_level { '2' };
# group id: display
sub max_image_width { '234' };
sub resolution_width { '240' };
sub resolution_height { '320' };
sub max_image_height { '300' };



1;

__END__

