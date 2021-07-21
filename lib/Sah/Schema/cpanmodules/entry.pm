package Sah::Schema::cpanmodules::entry;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['defhash', {
    summary => 'A single Acme::CPANModules list entry',
    'merge.add.keys' => {
        defhash_v => ['int', {req=>1, is=>1}],
        v => ['int', {req=>1, is=>1}],

        module => ['perl::modname', {req=>1}],
        rating => ['int', {min=>1, max=>10}],
        alternate_modules => ['perl::modnames', {req=>1}],
        related_modules => ['perl::modnames', {req=>1}],

        # this is actually not yet specified in spec
        script => ['str*', {req=>1}], # XXX program name
        scripts => ['array', {req=>1, of=>['str*', {req=>1}]}], # XXX program names

        # XXX features

        bench_code => ['code', {req=>1}],
        bench_code_template => ['str', {req=>1}],

        # XXX functions
    },
    'keys.restrict' => 1,
}];

1;
# ABSTRACT:
