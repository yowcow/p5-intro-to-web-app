package MyModel::Row::Member;
use strict;
use warnings;
use parent qw(Teng::Row);

sub is_active {
    my $self = shift;
    $self->status_flag == 1;
}

1;
