package Mobile::Devices::byID::s::ye::sonyericsson_generic;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::e::ic::ericsson_generic';



sub wurfl_id   { 'sonyericsson_generic' };
sub user_agent { 'SonyEricsson non-XHTML' };
sub fall_back  { Mobile::Devices::byID::e::ic::ericsson_generic->new() }
# group id: product_info
sub brand_name { 'SonyEricsson' };
# group id: markup
sub wml_1_2 { 'true' };
sub wml_1_3 { 'true' };
sub preferred_markup { 'wml_1_3' };
# group id: wap_push
sub connectionless_cache_operation { 'true' };
sub connectionoriented_confirmed_service_indication { 'true' };
sub connectionoriented_confirmed_service_load { 'true' };
sub connectionoriented_confirmed_cache_operation { 'true' };
sub wap_push_support { 'true' };
sub connectionoriented_unconfirmed_cache_operation { 'true' };
# group id: image_format
sub jpg { 'true' };
sub gif { 'true' };
sub gif_animated { 'true' };
sub colors { '256' };
# group id: object_download
sub directdownload_support { 'true' };
sub picture_inline_size_limit { '61440' };
sub screensaver_inline_size_limit { '61440' };
sub wallpaper { 'true' };
sub picture_directdownload_size_limit { '61440' };
sub picture_gif { 'true' };
sub screensaver_directdownload_size_limit { '61440' };
sub screensaver_gif { 'true' };
sub wallpaper_directdownload_size_limit { '61440' };
sub wallpaper_inline_size_limit { '61440' };
sub ringtone_inline_size_limit { '61440' };
sub ringtone_imelody { 'true' };
sub ringtone { 'true' };
sub wallpaper_gif { 'true' };
sub ringtone_directdownload_size_limit { '61440' };
sub picture { 'true' };
sub screensaver { 'true' };
sub inline_support { 'true' };
# group id: wta
sub nokia_voice_call { 'true' };
sub wta_phonebook { 'true' };
# group id: sms
sub ems { 'true' };
# group id: storage
sub max_deck_size { '3000' };
# group id: j2me
sub j2me_select_key_code { '-5' };
sub j2me_return_key_code { '-11' };
sub j2me_right_softkey_code { '-7' };
sub j2me_clear_key_code { '-8' };
sub j2me_left_softkey_code { '-6' };



1;

__END__

