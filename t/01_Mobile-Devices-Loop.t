#!/usr/bin/perl

use strict;
use warnings;

#use Test::More 'no_plan';
use Test::More tests => 5;
use Test::Differences;

use FindBin qw($Bin);
use lib "$Bin/lib";

BEGIN {
    use_ok ( 'Mobile::Devices::Loop' ) or exit;
}

exit main();

sub main {
	my $device_loop = Mobile::Devices::Loop->new(
		wurfl_xml_filename => File::Spec->catfile($Bin, 'wurfl-testing.xml')
	);
	isa_ok($device_loop, 'Mobile::Devices::Loop');
	
	eq_or_diff(
		$device_loop->version,
		version_hash(),
		'check version information'
	);
	
	$device_loop->next_device();
	my $device = $device_loop->next_device();
	
	isa_ok($device->{'dom'}, 'XML::LibXML::Element', 'we should have dom of each device isa XML::LibXML::Element');
	eq_or_diff(
		$device,
		xhtml_hash($device->{'dom'}),
		'check device information'
	);	
	
	return 0;
}

sub version_hash {
	return {
		'authors' => {
			'author' => [{
				'email' => 'passani@eunet.no',
				'name' => 'Luca Passani',
				'home_page' => 'http://www.wurfl.com'
			}],
		},
		'maintainers' => {
			'maintainer' => [{
				'email' => 'passani@eunet.no',
				'name' => 'Luca Passani',
				'home_page' => 'http://www.wurfl.com'
			}],
		},
		'last_updated' => 'Mon Feb 09 08:00:42 -0600 2009',
		'statement' => 'show WURFL xml for testing',
		'official_url' => 'http://wurfl.sourceforge.net/',
		'ver' => 'www.wurflpro.com - 2009-02-09 07:58:51'
	};
}

sub xhtml_hash {
	my $dom = shift;
	return bless {
	  'dom' => $dom,
	  'user_agent' => 'Mozz',
	  'fall_back' => 'generic',
	  'id' => 'generic_xhtml',
	  'group' => [
			 {
			   'id' => 'markup',
			   'capability' => [
							   {
								 'value' => 'true',
								 'name' => 'html_wi_oma_xhtmlmp_1_0'
							   },
							   {
								 'value' => 'true',
								 'name' => 'html_wi_w3_xhtmlbasic'
							   },
							   {
								 'value' => 'html_wi_oma_xhtmlmp_1_0',
								 'name' => 'preferred_markup'
							   },
							   {
								 'value' => '1',
								 'name' => 'xhtml_support_level'
							   }
							 ]
			 },
			 {
			   'id' => 'xhtml_ui',
			   'capability' => [
							   {
								 'value' => 'tel:',
								 'name' => 'xhtml_make_phone_call_string'
							   },
							   {
								 'value' => 'true',
								 'name' => 'cookie_support'
							   },
							   {
								 'value' => 'true',
								 'name' => 'xhtml_table_support'
							   },
							   {
								 'value' => 'application/vnd.wap.xhtml+xml',
								 'name' => 'xhtmlmp_preferred_mime_type'
							   }
							 ]
			 },
			 {
			   'id' => 'display',
			   'capability' => [
							   {
								 'value' => '120',
								 'name' => 'max_image_width'
							   },
							   {
								 'value' => '92',
								 'name' => 'resolution_height'
							   },
							   {
								 'value' => '128',
								 'name' => 'resolution_width'
							   },
							   {
								 'value' => '92',
								 'name' => 'max_image_height'
							   }
							 ]
			 },
			 {
			   'id' => 'image_format',
			   'capability' => [
							   {
								 'value' => 'true',
								 'name' => 'jpg'
							   },
							   {
								 'value' => 'true',
								 'name' => 'gif'
							   },
							   {
								 'value' => 'true',
								 'name' => 'gif_animated'
							   },
							   {
								 'value' => 'true',
								 'name' => 'png'
							   },
							   {
								 'value' => '256',
								 'name' => 'colors'
							   }
							 ]
			 },
			 {
			   'id' => 'storage',
			   'capability' => [
							   {
								 'value' => '256',
								 'name' => 'max_url_length_in_requests'
							   }
							 ]
			 }
	   ],
	}, 'Mobile::Devices::Loop::Device';
}
