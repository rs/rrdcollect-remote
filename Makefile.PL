use strict;
use ExtUtils::MakeMaker;

WriteMakefile
(
    NAME            => 'rrdcollect-remote',
    AUTHOR          => 'Olivier Poitrey <rs@mmania.com>',
    EXE_FILES       => ['rrdcollect-remote'],
    VERSION_FROM    => 'rrdcollect-remote',
    PREREQ_PM       =>
    {
        "AppConfig"         => 0,
        "Log::Log4perl"     => 0,
        "Proc::Daemon"      => 0,
        "RRDs"              => 0,
        "IO::File"          => 0,
        "IO::Select"        => 0,
        "IO::Socket"        => 0,
        "File::Basename"    => 0,
        "File::Path"        => 0,
        "File::Temp"        => 0,
    }
);
