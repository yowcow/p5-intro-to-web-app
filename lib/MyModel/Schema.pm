package MyModel::Schema;
use strict;
use warnings;
use Teng::Schema::Declare;

table {
    name 'member';
    pk 'id';
    columns qw(id name status_flag);
};

1;
