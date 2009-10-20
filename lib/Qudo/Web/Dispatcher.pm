package Qudo::Web::Dispatcher;
use Kamui::Web::Dispatcher;

on '/' => run {
    return 'Root', 'index', FALSE, +{};
};

on '/info/(databases|job_list|job_count|job_status|exceptions)' => run {
    return 'Info', $1, FALSE, +{};
};

1;

