#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Acme::Nothing' );
}

diag( "Testing Acme::Nothing $Acme::Nothing::VERSION, Perl $], $^X" );
