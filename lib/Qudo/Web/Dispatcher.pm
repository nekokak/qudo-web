package Qudo::Web::Dispatcher;
use Kamui::Web::Dispatcher;

on '/' => run {
    return 'Root', 'index', FALSE, +{};
};

on '/job_list' => run {
    return 'Root', 'job_list', FALSE, +{};
};

1;

