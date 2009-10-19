use inc::Module::Install;
name 'Qudo-Web';
all_from 'lib/Qudo/Web.pm';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
