package Qudo::Web::Controller::Root;
use Kamui::Web::Controller -base;
use Qudo::Web::Container;

sub dispatch_index {
    my ($class, $c) = @_;
}

sub dispatch_job_list {
    my ($class, $c) = @_;
    $c->stash->{job_list} = container('qudo')->job_list;
}

1;

