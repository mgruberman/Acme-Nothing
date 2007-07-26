package Acme::Nothing;

use warnings;
use strict;

our $VERSION = '0.01';

open my $fh, '<', \$VERSION;
close $fh;

@INC = sub {
    local *__ANON__ = $_[1];
    $INC{ $_[1] } = $_[1];
    open my $fh, '<', \!$[ or die;
    return $fh;
};

Internals::SvREADONLY( $_, 1 ) for @INC;
Internals::SvREADONLY( @INC, 1 );

() = .0

__END__

=head1 NAME

Acme::Nothing - No more module loading !

=head1 SYNOPSIS

Stops your script from loading any more modules.

    use Acme::Nothing;
    use Improbable;
    use Fish;

=head1 AUTHOR

No one.

=head1 BUGS

Please report any bugs or feature requests to
C<bug-acme-nothing at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Acme-Nothing>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Acme::Nothing

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Acme-Nothing>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Acme-Nothing>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Acme-Nothing>

=item * Search CPAN

L<http://search.cpan.org/dist/Acme-Nothing>

=back

=head1 ACKNOWLEDGEMENTS

Adam Kennedy, for everything.

=head1 COPYRIGHT & LICENSE

Copyright 2007 Josh ben Jore, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut
