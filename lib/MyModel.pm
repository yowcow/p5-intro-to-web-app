package MyModel;
use strict;
use warnings;
use parent qw(Teng);

sub create_instance {
    my $class = shift;
    $class->SUPER::new(
        {   connect_info => [
                'dbi:SQLite:dbname=test.db',    # DSN
                '',                             # Username
                '',                             # Password
            ],
        }
    );
}

1;
