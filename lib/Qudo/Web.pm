package Qudo::Web;
use Kamui::Web::Handler;
our $VERSION = '0.01';

use_container 'Qudo::Web::Container';
use_dispatcher 'Qudo::Web::Dispatcher';

=head1 NAME

Qudo::Web - Qudo web interface based on Kamui.

=head1 SYNOPSIS

  use Qudo::Web;
  Qudo::Web->start;

=head1 DESCRIPTION

Qudo::Web is Qudo web interface.

=head1 AUTHOR

Atsushi Kobayashi <nekokak __at__ gmail.com>

=head1 COPYRIGHT

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=cut

1;
