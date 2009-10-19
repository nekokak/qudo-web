package Qudo::Web::Container;
use Kamui::Container -base;
use Qudo;

register 'qudo' => sub {
    my $self = shift;

    Qudo->new(
        databases => $self->get('conf')->{databases}
    );
};

1;
