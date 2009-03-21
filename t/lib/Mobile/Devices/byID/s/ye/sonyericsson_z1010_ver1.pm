package Mobile::Devices::byID::s::ye::sonyericsson_z1010_ver1;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::s::ye::sonyericsson_40_generic';



sub wurfl_id   { 'sonyericsson_z1010_ver1' };
sub user_agent { 'SonyEricssonZ1010' };
sub fall_back  { Mobile::Devices::byID::s::ye::sonyericsson_40_generic->new() }
# group id: product_info
sub uaprof { 'http://wap.sonyericsson.com/UAprof/Z1010R101.xml' };
sub model_name { 'Z1010' };
sub uaprof2 { 'http://wap.sonyericsson.com/UAprof/Z1010R201.xml' };
sub uaprof3 { 'http://wap.sonyericsson.com/UAprof/Z1010R101-3G.xml' };
# group id: display
sub physical_screen_height { '44' };
sub columns { '15' };
sub physical_screen_width { '35' };
sub rows { '6' };
sub max_image_width { '169' };
sub resolution_height { '220' };
sub resolution_width { '176' };
sub max_image_height { '178' };
# group id: image_format
sub bmp { 'true' };
sub colors { '65536' };
# group id: wta
sub wta_pdc { 'true' };
# group id: storage
sub max_deck_size { '200000' };
# group id: j2me
sub j2me_midi { 'true' };
sub j2me_midp_2_0 { 'true' };
sub j2me_3gpp { 'true' };
sub j2me_wmapi_1_0 { 'true' };
sub j2me_mmapi_1_0 { 'true' };
sub j2me_bits_per_pixel { '16' };
sub j2me_cldc_1_0 { 'true' };
sub j2me_storage_size { '8388608' };
sub j2me_cldc_1_1 { 'true' };
sub j2me_mpeg4 { 'true' };
sub j2me_screen_height { '220' };
sub j2me_mp3 { 'true' };
sub j2me_right_softkey_code { '7' };
sub j2me_amr { 'true' };
sub j2me_screen_width { '176' };
sub j2me_clear_key_code { '8' };
sub j2me_imelody { 'true' };
sub j2me_canvas_height { '182' };
sub j2me_canvas_width { '176' };
sub j2me_left_softkey_code { '6' };
sub j2me_heap_size { '1572864' };
sub j2me_midp_1_0 { 'true' };
# group id: mms
sub mms_3gpp { 'true' };
sub mms_png { 'true' };
sub mms_max_size { '261120' };
sub mms_max_width { '120' };
sub mms_spmidi { 'true' };
sub mms_max_height { '160' };
sub mms_gif_static { 'true' };
sub sender { 'true' };
sub mms_video { 'true' };
sub mms_wav { 'true' };
sub mms_vcard { 'true' };
sub mms_midi_monophonic { 'true' };
sub mms_bmp { 'true' };
sub mms_vcalendar { 'true' };
sub mms_wbmp { 'true' };
sub mms_mp3 { 'true' };
sub mms_jar { 'true' };
sub mms_amr { 'true' };
sub receiver { 'true' };
sub mms_mp4 { 'true' };
sub mms_jpeg_baseline { 'true' };
# group id: sound_format
sub wav { 'true' };
sub sp_midi { 'true' };
sub voices { '16' };
sub mp3 { 'true' };
sub amr { 'true' };
sub midi_monophonic { 'true' };
sub imelody { 'true' };
sub midi_polyphonic { 'true' };
# group id: object_download
sub video_acodec_amr { 'true' };
sub video_directdownload_size_limit { '153600' };
sub video_max_width { '176' };
sub ringtone_voices { '64' };
sub wallpaper_png { 'true' };
sub ringtone_mp3 { 'true' };
sub video_vcodec_mpeg4 { 'true' };
sub wallpaper_colors { '16' };
sub ringtone_amr { 'true' };
sub ringtone_mmf { 'true' };
sub ringtone_midi_monophonic { 'true' };
sub wallpaper_preferred_width { '176' };
sub wallpaper_jpg { 'true' };
sub wallpaper_preferred_height { '144' };
sub video_max_height { '144' };
sub video_mp4 { 'true' };
sub video_3gpp { 'true' };
sub video_acodec_aac { 'true' };
sub video_vcodec_h263_0 { 'true' };
sub video_sqcif { 'true' };
sub video_qcif { 'true' };
sub video_preferred_width { '176' };
sub ringtone_wav { 'true' };
sub ringtone_midi_polyphonic { 'true' };
sub video_preferred_height { '144' };
sub video { 'true' };
sub ringtone_3gpp { 'true' };
sub video_max_frame_rate { '15' };
# group id: streaming
sub streaming_video_acodec_amr { 'true' };
sub streaming_video_vcodec_h263_0 { 'true' };
sub streaming_video_max_video_bit_rate { '32768' };
sub streaming_video_size_limit { '261120' };
sub streaming_video_sqcif { 'true' };
sub streaming_video_sqcif_max_width { '96' };
sub streaming_video_max_bit_rate { '32768' };
sub streaming_video_sqcif_max_height { '128' };
sub streaming_video_max_audio_bit_rate { '12492' };
sub streaming_video_vcodec_mpeg4 { 'true' };
sub streaming_3gpp { 'true' };
sub streaming_video_max_frame_rate { '15' };
sub streaming_video_acodec_aac { 'true' };
sub streaming_video { 'true' };
sub streaming_video_qcif { 'true' };
sub streaming_mp4 { 'true' };
sub streaming_video_qcif_max_width { '144' };
sub streaming_video_qcif_max_height { '176' };
# group id: markup
sub multipart_support { 'true' };
# group id: drm
sub oma_v_1_0_combined_delivery { 'true' };
sub oma_v_1_0_separate_delivery { 'false' };
sub oma_v_1_0_forwardlock { 'true' };
# group id: bearer
sub max_data_rate { '384' };



1;

__END__

