package Qudo::Web::Dispatcher;
use Kamui::Web::Dispatcher;

on '/' => run {
    return 'Root', 'index', FALSE, +{};
};

on '/job_list' => run {
    return 'Root', 'job_list', FALSE, +{};
};

on '/job_count' => run {
    return 'Root', 'job_count', FALSE, +{};
};

on '/job_status_list' => run {
    return 'Root', 'job_status_list', FALSE, +{};
};

on '/exception_list' => run {
    return 'Root', 'exception_list', FALSE, +{};
};

1;

