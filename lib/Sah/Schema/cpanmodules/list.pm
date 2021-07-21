package Sah::Schema::cpanmodules::list;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['defhash', {
    summary => 'Acme::CPANModules LIST structure',
    'merge.add.keys' => {
        defhash_v => ['int', {req=>1, is=>1}],
        v => ['int', {req=>1, is=>1}],
        entries => ['array*', {of=>['cpanmodules::entry', {req=>1}]}],

        # TODO: entry_features
    },
    'req_keys' => [qw/entries/],
    'keys.restrict' => 1,
}];

1;
# ABSTRACT:
