package Acme::Nothing;

use strict;
use 5.008;
use warnings;

our $VERSION = '0.01';

open my $fh, '<', \$VERSION;
close $fh;

@INC = sub {
    $INC{ $_[1] } = $_[1];
    open my $fh, '<', \!$[ or die;
    return $fh;
};

Internals::SvREADONLY( $_, 1 ) for @INC;
Internals::SvREADONLY( @INC, 1 );

() = .0
