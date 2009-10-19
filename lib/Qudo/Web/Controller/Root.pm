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

sub dispatch_job_count {
    my ($class, $c) = @_;
    $c->stash->{job_count} = container('qudo')->job_count;
}

sub dispatch_job_status_list {
    my ($class, $c) = @_;
    $c->stash->{job_status_list} = container('qudo')->job_status_list;
}

sub dispatch_exception_list {
    my ($class, $c) = @_;
    $c->stash->{exception_list} = container('qudo')->exception_list;
}

1;

