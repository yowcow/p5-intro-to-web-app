package MyApp::Controller::Root;
use strict;
use warnings;
use parent qw(Mojolicious::Controller);

sub respond_hello_world {
    my $self = shift;
    $self->render(text => "Hello world\n");
}

1;
