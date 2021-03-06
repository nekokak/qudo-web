package Qudo::Web::Command;
use strict;
use warnings;
use Qudo;
# use DBI; ## for dsn.

sub new {
    my ($class, %args) = @_;
    bless {
        qudo => Qudo->new(%args),
    }, $class;
}

sub qudo { $_[0]->{qudo} }

sub databases {
    my $self = shift;
    [sort $self->qudo->shuffled_databases];
}

sub job_list {
    my $self = shift;

    $self->qudo->job_list;
}

sub job_count {
    my $self = shift;

    $self->qudo->job_count;
}

sub job_status_list {
    my $self = shift;

    $self->qudo->job_status_list;
}

sub exception_list {
    my $self = shift;

    $self->qudo->exception_list;
}

1;

