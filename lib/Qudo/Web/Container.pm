package Qudo::Web::Container;
use Kamui::Container -base;
use Qudo::Web::Command;

register 'qudo' => sub {
    my $self = shift;

    Qudo::Web::Command->new(
        databases => $self->get('conf')->{databases}
    );
};

1;
