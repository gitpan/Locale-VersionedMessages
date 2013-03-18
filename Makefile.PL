
use ExtUtils::MakeMaker;
use 5.010000;
use strict;
use warnings;
my %requires = (
                 'File::Path'               => '0',
                 'IO::File'                 => '0',
                 'Test::Inter'              => '1.04',
                 'lib'                      => '0',
               );


WriteMakefile(
        NAME             => 'Locale::VersionedMessages',
        VERSION          => '0.91',
        ($] >= 5.010000
        ? (ABSTRACT=>'handle all aspects of the localization process',
           AUTHOR  =>'Sullivan Beck (sbeck@cpan.org)')
        : ()),
        'dist' => {COMPRESS=>'gzip',SUFFIX=>'gz'},
        PL_FILES  => {},
        PREREQ_PM => \%requires,
        EXE_FILES => [
           'bin/lm_gui',
        ],
);
