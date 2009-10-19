#! /usr/local/bin/perl
use strict;
use warnings;
use lib './lib';
use Qudo;
use Qudo::Web::Container;
use MockWorker;

my $qudo = Qudo->new(
   databases => container('conf')->{databases}
);

$qudo->enqueue('MockWorker',{ arg => 'arg', uniqkey => time});
