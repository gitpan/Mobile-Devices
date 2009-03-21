package Mobile::Devices::byID::g::en::generic;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::Base';

sub fall_back  { };
sub capabilities {
    return [
        'mobile_browser',
        'has_pointing_device',
        'device_os',
        'nokia_series',
        'has_qwerty_keyboard',
        'pointing_method',
        'mobile_browser_version',
        'nokia_edition',
        'uaprof',
        'can_skip_aligned_link_row',
        'device_claims_web_support',
        'ununiqueness_handler',
        'model_name',
        'device_os_version',
        'uaprof2',
        'is_wireless_device',
        'uaprof3',
        'brand_name',
        'model_extra_info',
        'marketing_name',
        'release_date',
        'unique',
        'icons_on_menu_items_support',
        'opwv_wml_extensions_support',
        'built_in_back_button_support',
        'proportional_font',
        'insert_br_element_after_widget_recommended',
        'wizards_recommended',
        'wml_can_display_images_and_text_on_same_line',
        'softkey_support',
        'wml_make_phone_call_string',
        'deck_prefetch_support',
        'menu_with_select_element_recommended',
        'numbered_menus',
        'card_title_support',
        'image_as_link_support',
        'wrap_mode_support',
        'table_support',
        'access_key_support',
        'wml_displays_image_in_center',
        'elective_forms_recommended',
        'times_square_mode_support',
        'break_list_of_links_with_br_element_recommended',
        'menu_with_list_of_links_recommended',
        'imode_region',
        'chtml_can_display_images_and_text_on_same_line',
        'chtml_displays_image_in_center',
        'chtml_make_phone_call_string',
        'chtml_table_support',
        'chtml_display_accesskey',
        'emoji',
        'xhtml_preferred_charset',
        'xhtml_supports_css_cell_table_coloring',
        'xhtml_select_as_radiobutton',
        'xhtml_autoexpand_select',
        'accept_third_party_cookie',
        'xhtml_make_phone_call_string',
        'xhtml_allows_disabled_form_elements',
        'xhtml_supports_invisible_text',
        'xhtml_select_as_dropdown',
        'cookie_support',
        'xhtml_send_mms_string',
        'xhtml_table_support',
        'xhtml_display_accesskey',
        'xhtml_supports_iframe',
        'xhtmlmp_preferred_mime_type',
        'xhtml_supports_monospace_font',
        'xhtml_supports_inline_input',
        'xhtml_supports_forms_in_table',
        'xhtml_document_title_support',
        'xhtml_support_wml2_namespace',
        'xhtml_supports_file_upload',
        'xhtml_readable_background_color1',
        'xhtml_format_as_attribute',
        'xhtml_supports_table_for_layout',
        'xhtml_readable_background_color2',
        'xhtml_select_as_popup',
        'xhtml_send_sms_string',
        'xhtml_format_as_css_property',
        'xhtml_file_upload',
        'xhtml_honors_bgcolor',
        'opwv_xhtml_extensions_support',
        'xhtml_marquee_as_css_property',
        'xhtml_nowrap_mode',
        'ajax_xhr_type',
        'ajax_support_getelementbyid',
        'ajax_support_event_listener',
        'ajax_manipulate_dom',
        'ajax_support_javascript',
        'ajax_support_inner_html',
        'ajax_manipulate_css',
        'ajax_support_events',
        'html_web_3_2',
        'html_wi_imode_htmlx_1',
        'html_wi_imode_html_1',
        'html_wi_oma_xhtmlmp_1_0',
        'html_wi_imode_html_2',
        'html_wi_w3_xhtmlbasic',
        'html_wi_imode_compact_generic',
        'html_wi_imode_html_3',
        'wml_1_1',
        'html_wi_imode_html_4',
        'wml_1_2',
        'html_wi_imode_html_5',
        'wml_1_3',
        'preferred_markup',
        'xhtml_support_level',
        'voicexml',
        'html_wi_imode_htmlx_1_1',
        'multipart_support',
        'html_web_4_0',
        'time_to_live_support',
        'total_cache_disable_support',
        'physical_screen_height',
        'columns',
        'physical_screen_width',
        'rows',
        'max_image_width',
        'resolution_height',
        'resolution_width',
        'max_image_height',
        'greyscale',
        'jpg',
        'gif',
        'transparent_png_index',
        'epoc_bmp',
        'bmp',
        'wbmp',
        'gif_animated',
        'colors',
        'svgt_1_1_plus',
        'svgt_1_1',
        'transparent_png_alpha',
        'png',
        'tiff',
        'emptyok',
        'empty_option_value_support',
        'basic_authentication_support',
        'post_method_support',
        'nokia_voice_call',
        'wta_pdc',
        'wta_voice_call',
        'wta_misc',
        'wta_phonebook',
        'phone_id_provided',
        'https_support',
        'https_detectable',
        'sdio',
        'wifi',
        'max_data_rate',
        'vpn',
        'max_length_of_username',
        'max_url_length_bookmark',
        'max_no_of_bookmarks',
        'max_deck_size',
        'max_url_length_cached_page',
        'max_length_of_password',
        'max_no_of_connection_settings',
        'max_url_length_in_requests',
        'max_object_size',
        'max_url_length_homepage',
        'video_directdownload_size_limit',
        'video_wmv',
        'video',
        'picture_bmp',
        'picture',
        'wallpaper_df_size_limit',
        'picture_preferred_width',
        'wallpaper_oma_size_limit',
        'video_real_media_8',
        'picture_greyscale',
        'inline_support',
        'ringtone_qcelp',
        'screensaver_oma_size_limit',
        'screensaver_wbmp',
        'video_acodec_amr',
        'video_real_media_9',
        'picture_resize',
        'picture_preferred_height',
        'ringtone_rmf',
        'wallpaper_wbmp',
        'wallpaper_jpg',
        'screensaver_bmp',
        'screensaver_max_width',
        'video_acodec_aac_ltp',
        'video_vcodec_mpeg4',
        'video_qcif',
        'picture_inline_size_limit',
        'picture_colors',
        'ringtone_midi_polyphonic',
        'ringtone_midi_monophonic',
        'video_max_width',
        'screensaver_preferred_height',
        'ringtone_voices',
        'video_3gpp2',
        'ringtone_3gpp',
        'oma_support',
        'ringtone_inline_size_limit',
        'wallpaper_preferred_width',
        'wallpaper_greyscale',
        'screensaver_preferred_width',
        'video_mp4',
        'wallpaper_preferred_height',
        'picture_max_width',
        'video_vcodec_h264',
        'video_max_height',
        'picture_jpg',
        'ringtone_aac',
        'ringtone_oma_size_limit',
        'wallpaper_directdownload_size_limit',
        'screensaver_inline_size_limit',
        'video_mov',
        'video_real_media_10',
        'ringtone_xmf',
        'video_oma_size_limit',
        'picture_max_height',
        'screensaver_max_height',
        'ringtone_mp3',
        'wallpaper_png',
        'screensaver_jpg',
        'video_df_size_limit',
        'ringtone_directdownload_size_limit',
        'wallpaper_max_width',
        'wallpaper_max_height',
        'video_acodec_aac',
        'screensaver',
        'ringtone_wav',
        'wallpaper_gif',
        'screensaver_directdownload_size_limit',
        'video_vcodec_h263_0',
        'video_inline_size_limit',
        'picture_df_size_limit',
        'wallpaper_tiff',
        'screensaver_df_size_limit',
        'ringtone_awb',
        'ringtone',
        'wallpaper_inline_size_limit',
        'video_preferred_width',
        'picture_directdownload_size_limit',
        'picture_png',
        'wallpaper_bmp',
        'video_vcodec_h263_3',
        'video_sqcif',
        'picture_wbmp',
        'ringtone_df_size_limit',
        'picture_oma_size_limit',
        'picture_gif',
        'screensaver_png',
        'wallpaper_resize',
        'screensaver_greyscale',
        'ringtone_mmf',
        'ringtone_amr',
        'wallpaper',
        'ringtone_digiplug',
        'video_acodec_qcelp',
        'video_preferred_height',
        'ringtone_spmidi',
        'ringtone_compactmidi',
        'ringtone_imelody',
        'screensaver_resize',
        'wallpaper_colors',
        'directdownload_support',
        'downloadfun_support',
        'video_acodec_awb',
        'video_max_frame_rate',
        'video_3gpp',
        'screensaver_colors',
        'screensaver_gif',
        'oma_v_1_0_combined_delivery',
        'oma_v_1_0_separate_delivery',
        'oma_v_1_0_forwardlock',
        'streaming_video_acodec_amr',
        'streaming_video_vcodec_h263_0',
        'streaming_video_max_video_bit_rate',
        'streaming_vcodec_mpeg4_asp',
        'streaming_video_size_limit',
        'streaming_video_sqcif',
        'streaming_mov',
        'streaming_real_media_10',
        'streaming_video_sqcif_max_width',
        'streaming_video_vcodec_h263_3',
        'streaming_video_max_bit_rate',
        'streaming_wmv',
        'streaming_acodec_aac',
        'streaming_vcodec_h263_0',
        'streaming_real_media',
        'streaming_video_sqcif_max_height',
        'streaming_3g2',
        'streaming_video_max_audio_bit_rate',
        'streaming_video_vcodec_mpeg4',
        'streaming_3gpp',
        'streaming_acodec_amr',
        'streaming_vcodec_h264_bp',
        'streaming_vcodec_h263_3',
        'streaming_video_acodec_aac_ltp',
        'streaming_video_acodec_awb',
        'streaming_video_max_frame_rate',
        'streaming_real_media_8',
        'streaming_vcodec_mpeg4_sp',
        'streaming_flv',
        'streaming_video_acodec_aac',
        'streaming_video_min_video_bit_rate',
        'streaming_real_media_9',
        'streaming_video',
        'streaming_video_qcif',
        'streaming_mp4',
        'streaming_video_vcodec_h264',
        'streaming_video_qcif_max_height',
        'streaming_video_qcif_max_width',
        'expiration_date',
        'utf8_support',
        'connectionless_cache_operation',
        'connectionless_service_load',
        'iso8859_support',
        'connectionoriented_confirmed_service_indication',
        'connectionless_service_indication',
        'ascii_support',
        'connectionoriented_confirmed_cache_operation',
        'connectionoriented_confirmed_service_load',
        'wap_push_support',
        'connectionoriented_unconfirmed_cache_operation',
        'connectionoriented_unconfirmed_service_load',
        'connectionoriented_unconfirmed_service_indication',
        'doja_1_5',
        'j2me_datefield_broken',
        'j2me_clear_key_code',
        'j2me_right_softkey_code',
        'j2me_heap_size',
        'j2me_canvas_width',
        'j2me_loctapi',
        'j2me_motorola_lwt',
        'doja_3_5',
        'j2me_wbmp',
        'j2me_rmf',
        'j2me_wma',
        'j2me_left_softkey_code',
        'j2me_jtwi',
        'j2me_jpg',
        'j2me_return_key_code',
        'j2me_real8',
        'j2me_max_record_store_size',
        'j2me_realmedia',
        'j2me_midp_1_0',
        'j2me_bmp3',
        'j2me_midi',
        'j2me_btapi',
        'j2me_siemens_extension',
        'j2me_h263',
        'j2me_audio_capture_enabled',
        'j2me_midp_2_0',
        'j2me_datefield_no_accepts_null_date',
        'j2me_aac',
        'j2me_capture_image_formats',
        'j2me_select_key_code',
        'j2me_xmf',
        'j2me_photo_capture_enabled',
        'j2me_realaudio',
        'j2me_realvideo',
        'j2me_mp3',
        'j2me_png',
        'j2me_au',
        'j2me_screen_width',
        'j2me_mp4',
        'j2me_mmapi_1_0',
        'j2me_http',
        'j2me_imelody',
        'j2me_socket',
        'j2me_3dapi',
        'j2me_bits_per_pixel',
        'j2me_mmapi_1_1',
        'j2me_udp',
        'j2me_wav',
        'j2me_middle_softkey_code',
        'j2me_svgt',
        'j2me_gif',
        'j2me_siemens_color_game',
        'j2me_max_jar_size',
        'j2me_wmapi_1_0',
        'j2me_nokia_ui',
        'j2me_screen_height',
        'j2me_wmapi_1_1',
        'j2me_wmapi_2_0',
        'doja_1_0',
        'j2me_serial',
        'doja_2_0',
        'j2me_bmp',
        'j2me_amr',
        'j2me_gif89a',
        'j2me_cldc_1_0',
        'doja_2_1',
        'doja_3_0',
        'j2me_cldc_1_1',
        'doja_2_2',
        'doja_4_0',
        'j2me_3gpp',
        'j2me_video_capture_enabled',
        'j2me_canvas_height',
        'j2me_https',
        'j2me_mpeg4',
        'j2me_storage_size',
        'mms_3gpp',
        'mms_wbxml',
        'mms_symbian_install',
        'mms_png',
        'mms_max_size',
        'mms_rmf',
        'mms_nokia_operatorlogo',
        'mms_max_width',
        'mms_max_frame_rate',
        'mms_wml',
        'mms_evrc',
        'mms_spmidi',
        'mms_gif_static',
        'mms_max_height',
        'sender',
        'mms_video',
        'mms_vcard',
        'mms_nokia_3dscreensaver',
        'mms_qcelp',
        'mms_midi_polyphonic',
        'mms_wav',
        'mms_jpeg_progressive',
        'mms_jad',
        'mms_nokia_ringingtone',
        'built_in_recorder',
        'mms_midi_monophonic',
        'mms_3gpp2',
        'mms_wmlc',
        'mms_nokia_wallpaper',
        'mms_bmp',
        'mms_vcalendar',
        'mms_jar',
        'mms_ota_bitmap',
        'mms_mp3',
        'mms_mmf',
        'mms_amr',
        'mms_wbmp',
        'built_in_camera',
        'receiver',
        'mms_mp4',
        'mms_xmf',
        'mms_jpeg_baseline',
        'mms_midi_polyphonic_voices',
        'mms_gif_animated',
        'ems',
        'text_imelody',
        'nokiaring',
        'siemens_logo_height',
        'ems_variablesizedpictures',
        'sckl_groupgraphic',
        'siemens_ota',
        'sagem_v1',
        'largeoperatorlogo',
        'sagem_v2',
        'ems_version',
        'ems_odi',
        'nokiavcal',
        'operatorlogo',
        'siemens_logo_width',
        'ems_imelody',
        'sckl_vcard',
        'siemens_screensaver_width',
        'sckl_operatorlogo',
        'panasonic',
        'ems_upi',
        'nokiavcard',
        'callericon',
        'gprtf',
        'siemens_screensaver_height',
        'sckl_ringtone',
        'picturemessage',
        'sckl_vcalendar',
        'rmf',
        'qcelp',
        'awb',
        'smf',
        'wav',
        'nokia_ringtone',
        'aac',
        'digiplug',
        'sp_midi',
        'compactmidi',
        'voices',
        'mp3',
        'mld',
        'evrc',
        'amr',
        'xmf',
        'mmf',
        'imelody',
        'midi_monophonic',
        'au',
        'midi_polyphonic',
        'flash_lite_version',
        'fl_wallpaper',
        'fl_browser',
        'fl_screensaver',
        'fl_standalone',
        'fl_sub_lcd',
        'css_supports_width_as_percentage',
        'is_transcoder',
        'transcoder_ua_header',
        'rss_support',
        'pdf_support',
        'playback_oma_size_limit',
        'playback_acodec_aac',
        'playback_vcodec_h263_3',
        'playback_vcodec_mpeg4_asp',
        'playback_mp4',
        'playback_3gpp',
        'playback_df_size_limit',
        'playback_acodec_amr',
        'playback_mov',
        'playback_acodec_qcelp',
        'playback_wmv',
        'progressive_download',
        'playback_directdownload_size_limit',
        'playback_real_media',
        'playback_3g2',
        'playback_vcodec_mpeg4_sp',
        'playback_vcodec_h263_0',
        'playback_inline_size_limit',
        'playback_vcodec_h264_bp',
    ];
}


sub wurfl_id   { 'generic' };
sub user_agent { '' };
# group id: product_info
sub mobile_browser { '' };
sub has_pointing_device { 'false' };
sub device_os { '' };
sub nokia_series { '0' };
sub has_qwerty_keyboard { 'false' };
sub pointing_method { '' };
sub mobile_browser_version { '' };
sub nokia_edition { '0' };
sub uaprof { '' };
sub can_skip_aligned_link_row { 'false' };
sub device_claims_web_support { 'false' };
sub ununiqueness_handler { '' };
sub model_name { '' };
sub device_os_version { '' };
sub uaprof2 { '' };
sub is_wireless_device { 'true' };
sub uaprof3 { '' };
sub brand_name { '' };
sub model_extra_info { '' };
sub marketing_name { '' };
sub release_date { '2002_january' };
sub unique { 'true' };
# group id: wml_ui
sub icons_on_menu_items_support { 'false' };
sub opwv_wml_extensions_support { 'false' };
sub built_in_back_button_support { 'false' };
sub proportional_font { 'false' };
sub insert_br_element_after_widget_recommended { 'false' };
sub wizards_recommended { 'false' };
sub wml_can_display_images_and_text_on_same_line { 'false' };
sub softkey_support { 'false' };
sub wml_make_phone_call_string { 'wtai://wp/mc;' };
sub deck_prefetch_support { 'false' };
sub menu_with_select_element_recommended { 'false' };
sub numbered_menus { 'false' };
sub card_title_support { 'true' };
sub image_as_link_support { 'false' };
sub wrap_mode_support { 'false' };
sub table_support { 'true' };
sub access_key_support { 'false' };
sub wml_displays_image_in_center { 'false' };
sub elective_forms_recommended { 'true' };
sub times_square_mode_support { 'false' };
sub break_list_of_links_with_br_element_recommended { 'true' };
sub menu_with_list_of_links_recommended { 'true' };
# group id: chtml_ui
sub imode_region { 'none' };
sub chtml_can_display_images_and_text_on_same_line { 'false' };
sub chtml_displays_image_in_center { 'false' };
sub chtml_make_phone_call_string { 'tel:' };
sub chtml_table_support { 'false' };
sub chtml_display_accesskey { 'false' };
sub emoji { 'false' };
# group id: xhtml_ui
sub xhtml_preferred_charset { 'utf8' };
sub xhtml_supports_css_cell_table_coloring { 'false' };
sub xhtml_select_as_radiobutton { 'false' };
sub xhtml_autoexpand_select { 'false' };
sub accept_third_party_cookie { 'true' };
sub xhtml_make_phone_call_string { 'tel:' };
sub xhtml_allows_disabled_form_elements { 'false' };
sub xhtml_supports_invisible_text { 'false' };
sub xhtml_select_as_dropdown { 'false' };
sub cookie_support { 'false' };
sub xhtml_send_mms_string { 'none' };
sub xhtml_table_support { 'false' };
sub xhtml_display_accesskey { 'false' };
sub xhtml_supports_iframe { 'none' };
sub xhtmlmp_preferred_mime_type { 'application/vnd.wap.xhtml+xml' };
sub xhtml_supports_monospace_font { 'false' };
sub xhtml_supports_inline_input { 'false' };
sub xhtml_supports_forms_in_table { 'false' };
sub xhtml_document_title_support { 'true' };
sub xhtml_support_wml2_namespace { 'false' };
sub xhtml_supports_file_upload { 'false' };
sub xhtml_readable_background_color1 { '#FFFFFF' };
sub xhtml_format_as_attribute { 'false' };
sub xhtml_supports_table_for_layout { 'false' };
sub xhtml_readable_background_color2 { '#FFFFFF' };
sub xhtml_select_as_popup { 'false' };
sub xhtml_send_sms_string { 'none' };
sub xhtml_format_as_css_property { 'false' };
sub xhtml_file_upload { 'not_supported' };
sub xhtml_honors_bgcolor { 'false' };
sub opwv_xhtml_extensions_support { 'false' };
sub xhtml_marquee_as_css_property { 'false' };
sub xhtml_nowrap_mode { 'false' };
# group id: ajax
sub ajax_xhr_type { 'none' };
sub ajax_support_getelementbyid { 'false' };
sub ajax_support_event_listener { 'false' };
sub ajax_manipulate_dom { 'false' };
sub ajax_support_javascript { 'false' };
sub ajax_support_inner_html { 'false' };
sub ajax_manipulate_css { 'false' };
sub ajax_support_events { 'false' };
# group id: markup
sub html_web_3_2 { 'false' };
sub html_wi_imode_htmlx_1 { 'false' };
sub html_wi_imode_html_1 { 'false' };
sub html_wi_oma_xhtmlmp_1_0 { 'true' };
sub html_wi_imode_html_2 { 'false' };
sub html_wi_w3_xhtmlbasic { 'true' };
sub html_wi_imode_compact_generic { 'false' };
sub html_wi_imode_html_3 { 'false' };
sub wml_1_1 { 'true' };
sub html_wi_imode_html_4 { 'false' };
sub wml_1_2 { 'false' };
sub html_wi_imode_html_5 { 'false' };
sub wml_1_3 { 'false' };
sub preferred_markup { 'html_wi_oma_xhtmlmp_1_0' };
sub xhtml_support_level { '1' };
sub voicexml { 'false' };
sub html_wi_imode_htmlx_1_1 { 'false' };
sub multipart_support { 'false' };
sub html_web_4_0 { 'false' };
# group id: cache
sub time_to_live_support { 'false' };
sub total_cache_disable_support { 'false' };
# group id: display
sub physical_screen_height { '27' };
sub columns { '11' };
sub physical_screen_width { '27' };
sub rows { '6' };
sub max_image_width { '90' };
sub resolution_height { '40' };
sub resolution_width { '90' };
sub max_image_height { '35' };
# group id: image_format
sub greyscale { 'false' };
sub jpg { 'false' };
sub gif { 'true' };
sub transparent_png_index { 'false' };
sub epoc_bmp { 'false' };
sub bmp { 'false' };
sub wbmp { 'true' };
sub gif_animated { 'false' };
sub colors { '256' };
sub svgt_1_1_plus { 'false' };
sub svgt_1_1 { 'false' };
sub transparent_png_alpha { 'false' };
sub png { 'false' };
sub tiff { 'false' };
# group id: bugs
sub emptyok { 'false' };
sub empty_option_value_support { 'true' };
sub basic_authentication_support { 'true' };
sub post_method_support { 'true' };
# group id: wta
sub nokia_voice_call { 'false' };
sub wta_pdc { 'false' };
sub wta_voice_call { 'false' };
sub wta_misc { 'false' };
sub wta_phonebook { 'false' };
# group id: security
sub phone_id_provided { 'false' };
sub https_support { 'true' };
sub https_detectable { 'false' };
# group id: bearer
sub sdio { 'false' };
sub wifi { 'false' };
sub max_data_rate { '9' };
sub vpn { 'false' };
# group id: storage
sub max_length_of_username { '0' };
sub max_url_length_bookmark { '0' };
sub max_no_of_bookmarks { '0' };
sub max_deck_size { '4000' };
sub max_url_length_cached_page { '0' };
sub max_length_of_password { '0' };
sub max_no_of_connection_settings { '0' };
sub max_url_length_in_requests { '128' };
sub max_object_size { '0' };
sub max_url_length_homepage { '0' };
# group id: object_download
sub video_directdownload_size_limit { '0' };
sub video_wmv { 'false' };
sub video { 'false' };
sub picture_bmp { 'false' };
sub picture { 'false' };
sub wallpaper_df_size_limit { '0' };
sub picture_preferred_width { '0' };
sub wallpaper_oma_size_limit { '0' };
sub video_real_media_8 { 'false' };
sub picture_greyscale { 'false' };
sub inline_support { 'false' };
sub ringtone_qcelp { 'false' };
sub screensaver_oma_size_limit { '0' };
sub screensaver_wbmp { 'false' };
sub video_acodec_amr { 'false' };
sub video_real_media_9 { 'false' };
sub picture_resize { 'none' };
sub picture_preferred_height { '0' };
sub ringtone_rmf { 'false' };
sub wallpaper_wbmp { 'false' };
sub wallpaper_jpg { 'false' };
sub screensaver_bmp { 'false' };
sub screensaver_max_width { '0' };
sub video_acodec_aac_ltp { 'false' };
sub video_vcodec_mpeg4 { 'false' };
sub video_qcif { 'false' };
sub picture_inline_size_limit { '0' };
sub picture_colors { '2' };
sub ringtone_midi_polyphonic { 'false' };
sub ringtone_midi_monophonic { 'false' };
sub video_max_width { '0' };
sub screensaver_preferred_height { '0' };
sub ringtone_voices { '1' };
sub video_3gpp2 { 'false' };
sub ringtone_3gpp { 'false' };
sub oma_support { 'false' };
sub ringtone_inline_size_limit { '0' };
sub wallpaper_preferred_width { '0' };
sub wallpaper_greyscale { 'false' };
sub screensaver_preferred_width { '0' };
sub video_mp4 { 'false' };
sub wallpaper_preferred_height { '0' };
sub picture_max_width { '0' };
sub video_vcodec_h264 { 'none' };
sub video_max_height { '0' };
sub picture_jpg { 'false' };
sub ringtone_aac { 'false' };
sub ringtone_oma_size_limit { '0' };
sub wallpaper_directdownload_size_limit { '0' };
sub screensaver_inline_size_limit { '0' };
sub video_mov { 'false' };
sub video_real_media_10 { 'false' };
sub ringtone_xmf { 'false' };
sub video_oma_size_limit { '0' };
sub picture_max_height { '0' };
sub screensaver_max_height { '0' };
sub ringtone_mp3 { 'false' };
sub wallpaper_png { 'false' };
sub screensaver_jpg { 'false' };
sub video_df_size_limit { '0' };
sub ringtone_directdownload_size_limit { '0' };
sub wallpaper_max_width { '0' };
sub wallpaper_max_height { '0' };
sub video_acodec_aac { 'false' };
sub screensaver { 'false' };
sub ringtone_wav { 'false' };
sub wallpaper_gif { 'false' };
sub screensaver_directdownload_size_limit { '0' };
sub video_vcodec_h263_0 { 'false' };
sub video_inline_size_limit { '0' };
sub picture_df_size_limit { '0' };
sub wallpaper_tiff { 'false' };
sub screensaver_df_size_limit { '0' };
sub ringtone_awb { 'false' };
sub ringtone { 'false' };
sub wallpaper_inline_size_limit { '0' };
sub video_preferred_width { '0' };
sub picture_directdownload_size_limit { '0' };
sub picture_png { 'false' };
sub wallpaper_bmp { 'false' };
sub video_vcodec_h263_3 { 'false' };
sub video_sqcif { 'false' };
sub picture_wbmp { 'false' };
sub ringtone_df_size_limit { '0' };
sub picture_oma_size_limit { '0' };
sub picture_gif { 'false' };
sub screensaver_png { 'false' };
sub wallpaper_resize { 'none' };
sub screensaver_greyscale { 'false' };
sub ringtone_mmf { 'false' };
sub ringtone_amr { 'false' };
sub wallpaper { 'false' };
sub ringtone_digiplug { 'false' };
sub video_acodec_qcelp { 'false' };
sub video_preferred_height { '0' };
sub ringtone_spmidi { 'false' };
sub ringtone_compactmidi { 'false' };
sub ringtone_imelody { 'false' };
sub screensaver_resize { 'none' };
sub wallpaper_colors { '2' };
sub directdownload_support { 'false' };
sub downloadfun_support { 'false' };
sub video_acodec_awb { 'false' };
sub video_max_frame_rate { '0' };
sub video_3gpp { 'false' };
sub screensaver_colors { '2' };
sub screensaver_gif { 'false' };
# group id: drm
sub oma_v_1_0_combined_delivery { 'false' };
sub oma_v_1_0_separate_delivery { 'false' };
sub oma_v_1_0_forwardlock { 'false' };
# group id: streaming
sub streaming_video_acodec_amr { 'false' };
sub streaming_video_vcodec_h263_0 { 'false' };
sub streaming_video_max_video_bit_rate { '0' };
sub streaming_vcodec_mpeg4_asp { '-1' };
sub streaming_video_size_limit { '0' };
sub streaming_video_sqcif { 'false' };
sub streaming_mov { 'false' };
sub streaming_real_media_10 { 'false' };
sub streaming_video_sqcif_max_width { '0' };
sub streaming_video_vcodec_h263_3 { 'false' };
sub streaming_video_max_bit_rate { '0' };
sub streaming_wmv { 'false' };
sub streaming_acodec_aac { 'none' };
sub streaming_vcodec_h263_0 { '-1' };
sub streaming_real_media { 'none' };
sub streaming_video_sqcif_max_height { '0' };
sub streaming_3g2 { 'none' };
sub streaming_video_max_audio_bit_rate { '0' };
sub streaming_video_vcodec_mpeg4 { 'false' };
sub streaming_3gpp { 'false' };
sub streaming_acodec_amr { 'none' };
sub streaming_vcodec_h264_bp { '-1' };
sub streaming_vcodec_h263_3 { '-1' };
sub streaming_video_acodec_aac_ltp { 'false' };
sub streaming_video_acodec_awb { 'false' };
sub streaming_video_max_frame_rate { '0' };
sub streaming_real_media_8 { 'false' };
sub streaming_vcodec_mpeg4_sp { '-1' };
sub streaming_flv { 'false' };
sub streaming_video_acodec_aac { 'false' };
sub streaming_video_min_video_bit_rate { '0' };
sub streaming_real_media_9 { 'false' };
sub streaming_video { 'false' };
sub streaming_video_qcif { 'false' };
sub streaming_mp4 { 'false' };
sub streaming_video_vcodec_h264 { 'none' };
sub streaming_video_qcif_max_height { '0' };
sub streaming_video_qcif_max_width { '0' };
# group id: wap_push
sub expiration_date { 'false' };
sub utf8_support { 'false' };
sub connectionless_cache_operation { 'false' };
sub connectionless_service_load { 'false' };
sub iso8859_support { 'false' };
sub connectionoriented_confirmed_service_indication { 'false' };
sub connectionless_service_indication { 'false' };
sub ascii_support { 'false' };
sub connectionoriented_confirmed_cache_operation { 'false' };
sub connectionoriented_confirmed_service_load { 'false' };
sub wap_push_support { 'false' };
sub connectionoriented_unconfirmed_cache_operation { 'false' };
sub connectionoriented_unconfirmed_service_load { 'false' };
sub connectionoriented_unconfirmed_service_indication { 'false' };
# group id: j2me
sub doja_1_5 { 'false' };
sub j2me_datefield_broken { 'false' };
sub j2me_clear_key_code { '0' };
sub j2me_right_softkey_code { '0' };
sub j2me_heap_size { '0' };
sub j2me_canvas_width { '0' };
sub j2me_loctapi { 'false' };
sub j2me_motorola_lwt { 'false' };
sub doja_3_5 { 'false' };
sub j2me_wbmp { 'false' };
sub j2me_rmf { 'false' };
sub j2me_wma { 'false' };
sub j2me_left_softkey_code { '0' };
sub j2me_jtwi { 'false' };
sub j2me_jpg { 'false' };
sub j2me_return_key_code { '0' };
sub j2me_real8 { 'false' };
sub j2me_max_record_store_size { '0' };
sub j2me_realmedia { 'false' };
sub j2me_midp_1_0 { 'false' };
sub j2me_bmp3 { 'false' };
sub j2me_midi { 'false' };
sub j2me_btapi { 'false' };
sub j2me_siemens_extension { 'false' };
sub j2me_h263 { 'false' };
sub j2me_audio_capture_enabled { 'false' };
sub j2me_midp_2_0 { 'false' };
sub j2me_datefield_no_accepts_null_date { 'false' };
sub j2me_aac { 'false' };
sub j2me_capture_image_formats { 'none' };
sub j2me_select_key_code { '0' };
sub j2me_xmf { 'false' };
sub j2me_photo_capture_enabled { 'false' };
sub j2me_realaudio { 'false' };
sub j2me_realvideo { 'false' };
sub j2me_mp3 { 'false' };
sub j2me_png { 'false' };
sub j2me_au { 'false' };
sub j2me_screen_width { '0' };
sub j2me_mp4 { 'false' };
sub j2me_mmapi_1_0 { 'false' };
sub j2me_http { 'false' };
sub j2me_imelody { 'false' };
sub j2me_socket { 'false' };
sub j2me_3dapi { 'false' };
sub j2me_bits_per_pixel { '0' };
sub j2me_mmapi_1_1 { 'false' };
sub j2me_udp { 'false' };
sub j2me_wav { 'false' };
sub j2me_middle_softkey_code { '0' };
sub j2me_svgt { 'false' };
sub j2me_gif { 'false' };
sub j2me_siemens_color_game { 'false' };
sub j2me_max_jar_size { '0' };
sub j2me_wmapi_1_0 { 'false' };
sub j2me_nokia_ui { 'false' };
sub j2me_screen_height { '0' };
sub j2me_wmapi_1_1 { 'false' };
sub j2me_wmapi_2_0 { 'false' };
sub doja_1_0 { 'false' };
sub j2me_serial { 'false' };
sub doja_2_0 { 'false' };
sub j2me_bmp { 'false' };
sub j2me_amr { 'false' };
sub j2me_gif89a { 'false' };
sub j2me_cldc_1_0 { 'false' };
sub doja_2_1 { 'false' };
sub doja_3_0 { 'false' };
sub j2me_cldc_1_1 { 'false' };
sub doja_2_2 { 'false' };
sub doja_4_0 { 'false' };
sub j2me_3gpp { 'false' };
sub j2me_video_capture_enabled { 'false' };
sub j2me_canvas_height { '0' };
sub j2me_https { 'false' };
sub j2me_mpeg4 { 'false' };
sub j2me_storage_size { '0' };
# group id: mms
sub mms_3gpp { 'false' };
sub mms_wbxml { 'false' };
sub mms_symbian_install { 'false' };
sub mms_png { 'false' };
sub mms_max_size { '0' };
sub mms_rmf { 'false' };
sub mms_nokia_operatorlogo { 'false' };
sub mms_max_width { '0' };
sub mms_max_frame_rate { '0' };
sub mms_wml { 'false' };
sub mms_evrc { 'false' };
sub mms_spmidi { 'false' };
sub mms_gif_static { 'false' };
sub mms_max_height { '0' };
sub sender { 'false' };
sub mms_video { 'false' };
sub mms_vcard { 'false' };
sub mms_nokia_3dscreensaver { 'false' };
sub mms_qcelp { 'false' };
sub mms_midi_polyphonic { 'false' };
sub mms_wav { 'false' };
sub mms_jpeg_progressive { 'false' };
sub mms_jad { 'false' };
sub mms_nokia_ringingtone { 'false' };
sub built_in_recorder { 'false' };
sub mms_midi_monophonic { 'false' };
sub mms_3gpp2 { 'false' };
sub mms_wmlc { 'false' };
sub mms_nokia_wallpaper { 'false' };
sub mms_bmp { 'false' };
sub mms_vcalendar { 'false' };
sub mms_jar { 'false' };
sub mms_ota_bitmap { 'false' };
sub mms_mp3 { 'false' };
sub mms_mmf { 'false' };
sub mms_amr { 'false' };
sub mms_wbmp { 'false' };
sub built_in_camera { 'false' };
sub receiver { 'false' };
sub mms_mp4 { 'false' };
sub mms_xmf { 'false' };
sub mms_jpeg_baseline { 'false' };
sub mms_midi_polyphonic_voices { '0' };
sub mms_gif_animated { 'false' };
# group id: sms
sub ems { 'false' };
sub text_imelody { 'false' };
sub nokiaring { 'false' };
sub siemens_logo_height { '29' };
sub ems_variablesizedpictures { 'false' };
sub sckl_groupgraphic { 'false' };
sub siemens_ota { 'false' };
sub sagem_v1 { 'false' };
sub largeoperatorlogo { 'false' };
sub sagem_v2 { 'false' };
sub ems_version { '0' };
sub ems_odi { 'false' };
sub nokiavcal { 'false' };
sub operatorlogo { 'false' };
sub siemens_logo_width { '101' };
sub ems_imelody { 'false' };
sub sckl_vcard { 'false' };
sub siemens_screensaver_width { '101' };
sub sckl_operatorlogo { 'false' };
sub panasonic { 'false' };
sub ems_upi { 'false' };
sub nokiavcard { 'false' };
sub callericon { 'false' };
sub gprtf { 'false' };
sub siemens_screensaver_height { '50' };
sub sckl_ringtone { 'false' };
sub picturemessage { 'false' };
sub sckl_vcalendar { 'false' };
# group id: sound_format
sub rmf { 'false' };
sub qcelp { 'false' };
sub awb { 'false' };
sub smf { 'false' };
sub wav { 'false' };
sub nokia_ringtone { 'false' };
sub aac { 'false' };
sub digiplug { 'false' };
sub sp_midi { 'false' };
sub compactmidi { 'false' };
sub voices { '1' };
sub mp3 { 'false' };
sub mld { 'false' };
sub evrc { 'false' };
sub amr { 'false' };
sub xmf { 'false' };
sub mmf { 'false' };
sub imelody { 'false' };
sub midi_monophonic { 'false' };
sub au { 'false' };
sub midi_polyphonic { 'false' };
# group id: flash_lite
sub flash_lite_version { '' };
sub fl_wallpaper { 'false' };
sub fl_browser { 'false' };
sub fl_screensaver { 'false' };
sub fl_standalone { 'false' };
sub fl_sub_lcd { 'false' };
# group id: css
sub css_supports_width_as_percentage { 'true' };
# group id: transcoding
sub is_transcoder { 'false' };
sub transcoder_ua_header { 'user-agent' };
# group id: rss
sub rss_support { 'false' };
# group id: pdf
sub pdf_support { 'false' };
# group id: playback
sub playback_oma_size_limit { '0' };
sub playback_acodec_aac { 'none' };
sub playback_vcodec_h263_3 { '-1' };
sub playback_vcodec_mpeg4_asp { '-1' };
sub playback_mp4 { 'false' };
sub playback_3gpp { 'false' };
sub playback_df_size_limit { '0' };
sub playback_acodec_amr { 'none' };
sub playback_mov { 'false' };
sub playback_acodec_qcelp { 'false' };
sub playback_wmv { 'false' };
sub progressive_download { 'false' };
sub playback_directdownload_size_limit { '0' };
sub playback_real_media { 'none' };
sub playback_3g2 { 'false' };
sub playback_vcodec_mpeg4_sp { '-1' };
sub playback_vcodec_h263_0 { '-1' };
sub playback_inline_size_limit { '0' };
sub playback_vcodec_h264_bp { '-1' };

1;
