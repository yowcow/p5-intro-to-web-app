use strict;
use warnings;
use Test::More;

use_ok 'MyModel';

my $model = MyModel->create_instance;

$model->dbh->do('DELETE FROM member');

subtest 'insert' => sub {
    my $inserted_row = $model->insert(
        member => {
            name        => '你好',
            status_flag => 1,
        },
    );

    isa_ok $inserted_row, 'MyModel::Row::Member';
    is $inserted_row->name,        '你好';
    is $inserted_row->status_flag, 1;
    ok $inserted_row->is_active;

    subtest 'select single row' => sub {
        my $selected_row = $model->single(member => { id => $inserted_row->id },);

        isa_ok $selected_row, 'MyModel::Row::Member';
        is $selected_row->name,        '你好';
        is $selected_row->status_flag, 1;
        ok $selected_row->is_active;
    };
};

done_testing;
