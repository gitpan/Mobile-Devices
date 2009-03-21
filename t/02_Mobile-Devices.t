#!/usr/bin/perl

use strict;
use warnings;

use Test::More 'no_plan';
#use Test::More tests => 4;
use Test::Differences;

use File::Spec;

use FindBin qw($Bin);
use lib "$Bin/lib";

BEGIN {
    use_ok ( 'Mobile::Devices' ) or exit;
}

exit main();

sub main {
	my $devices = Mobile::Devices->new('search_base' => File::Spec->catfile($Bin, 'lib'));
	eq_or_diff(
		[
			map { $devices->ua_to_filename($_) } qw(
				a
				bc
				cde
				fghi
				jkLmn
				opq-st
				u2wxyza
				123456789012
			)
		], [ map { File::Spec->catfile($Bin, 'lib', 'Mobile', 'Devices', 'byUA', $_) } qw(
			a/__/___
			b/c_/___
			c/de/___
			f/gh/i__
			j/kl/mn_
			o/pq/_st
			u/2w/xyz
			1/34/789
		)],
		'check ua_to_filename'
	);
	
	isa_ok(
		$devices->search( 'ua' => 'Novarra/5.2.25.1.11samsungp910(J2ME-OPT)' ),
		'Mobile::Devices::byID::s::_n::stupid_novarra_nweb_genreric_samsungp910',
		'lookup "Novarra/5.2.25.1.11samsungp910(J2ME-OPT)" => stupid_novarra_nweb_genreric_samsungp910'
	);
	
	isa_ok(
		$devices->search( 'ua' => 'SonyEricssonZ1010/R101 Profile/MIDP-2.0 Configuration/CLDC-1.0' ),
		'Mobile::Devices::byID::s::ri::sonyericsson_z1010_ver1_subr101',
		'lookup "SonyEricssonZ1010/R101 Profile/MIDP-2.0 Configuration/CLDC-1.0" => sonyericsson_z1010_ver1_subr101'
	);
	
	is(
		$devices->search( 'ua' => 'non-existing' ),
		undef,
		'lookup "non-existing" => undef'
	);

	eq_or_diff(
		[
			map { $devices->id_to_filename($_) } qw(
				a
				bc
				cde
				fghi
				jkLmn
				opq-st
				u2wxyza
				123456789012
			)
		], [ map { File::Spec->catfile($Bin, 'lib', 'Mobile', 'Devices', 'byID', $_) } qw(
			a/__/a.pm
			b/c_/bc.pm
			c/de/cde.pm
			f/gh/fghi.pm
			j/kl/jkLmn.pm
			o/pq/opq_st.pm
			u/2w/u2wxyza.pm
			1/34/123456789012.pm
		)],
		'check id_to_filename'
	);
	
	eq_or_diff(
		[
			map { $devices->id_to_modulename($_) } qw(
				a
				bc
				cde
				fghi
				jkLmn
				opq-st
				u2wxyza
				123456789012
			)
		], [ map { join('::', 'Mobile', 'Devices', 'byID', $_) } qw(
			a::__::a
			b::c_::bc
			c::de::cde
			f::gh::fghi
			j::kl::jkLmn
			o::pq::opq_st
			u::2w::u2wxyza
			1::34::123456789012
		)],
		'check id_to_modulename'
	);
	
	
	return 0;
}
