package Mobile::Devices::byID::s::ye::sonyericsson_30_generic;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::s::er::sonyericsson_xhtml_generic';



sub wurfl_id   { 'sonyericsson_30_generic' };
sub user_agent { 'SonyEricsson XHTML Browser 3.0' };
sub fall_back  { Mobile::Devices::byID::s::er::sonyericsson_xhtml_generic->new() }
# group id: wml_ui
sub wml_can_display_images_and_text_on_same_line { 'true' };
sub wml_displays_image_in_center { 'false' };
# group id: xhtml_ui
sub xhtml_display_accesskey { 'false' };
sub xhtml_honors_bgcolor { 'true' };
# group id: object_download
sub picture_inline_size_limit { '262144' };
sub screensaver_inline_size_limit { '262144' };
sub picture_directdownload_size_limit { '262144' };
sub screensaver_directdownload_size_limit { '262144' };
sub wallpaper_directdownload_size_limit { '262144' };
sub wallpaper_inline_size_limit { '262144' };
sub ringtone_inline_size_limit { '262144' };
sub ringtone_directdownload_size_limit { '262144' };
sub oma_support { 'true' };
# group id: storage
sub max_deck_size { '10240' };
# group id: display
sub max_image_width { '120' };
sub resolution_width { '128' };



1;

__END__

