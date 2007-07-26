use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Acme::Nothing',
    AUTHOR              => 'Josh ben Jore <jjore@cpan.org>',
    VERSION_FROM        => 'lib/Acme/Nothing.pm',
    ABSTRACT_FROM       => 'lib/Acme/Nothing.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Acme-Nothing-*' },
);
