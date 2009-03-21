package Mobile::Devices::byID::g::ne::generic_xhtml;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::g::en::generic';



sub wurfl_id   { 'generic_xhtml' };
sub user_agent { 'Mozz' };
sub fall_back  { Mobile::Devices::byID::g::en::generic->new() }
# group id: markup
sub html_wi_oma_xhtmlmp_1_0 { 'true' };
sub html_wi_w3_xhtmlbasic { 'true' };
sub preferred_markup { 'html_wi_oma_xhtmlmp_1_0' };
sub xhtml_support_level { '1' };
# group id: xhtml_ui
sub xhtml_make_phone_call_string { 'tel:' };
sub cookie_support { 'true' };
sub xhtml_table_support { 'true' };
sub xhtmlmp_preferred_mime_type { 'application/vnd.wap.xhtml+xml' };
# group id: display
sub max_image_width { '120' };
sub resolution_height { '92' };
sub resolution_width { '128' };
sub max_image_height { '92' };
# group id: image_format
sub jpg { 'true' };
sub gif { 'true' };
sub gif_animated { 'true' };
sub png { 'true' };
sub colors { '256' };
# group id: storage
sub max_url_length_in_requests { '256' };



1;

__END__

