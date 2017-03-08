use strict;
use warnings;
use Test::Mojo;
use Test::More;

my $t = Test::Mojo->new('MyApp');

$t->get_ok('/')->status_is(200)->content_is("Hello world\n");

done_testing;
