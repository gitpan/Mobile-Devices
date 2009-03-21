package Mobile::Devices::byID::s::_n::stupid_novarra_nweb_genreric_samsungp910;

use strict;
use warnings;

our $VERSION = '2009.02.09';

use base 'Mobile::Devices::byID::s::id::stupid_novarra_nweb_generic';



sub wurfl_id   { 'stupid_novarra_nweb_genreric_samsungp910' };
sub user_agent { 'Novarra/5.2.25.1.11samsungp910(J2ME-OPT)' };
sub fall_back  { Mobile::Devices::byID::s::id::stupid_novarra_nweb_generic->new() }



1;

__END__

