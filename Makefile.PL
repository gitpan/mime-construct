# $Id: Makefile.PL,v 1.1 1999/04/03 05:01:28 roderick Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
    EXE_FILES		=> ['mime-construct'],
    NAME		=> 'mime-construct',
    PREREQ_PM		=> {
			    'MIME::Base64'	=> 0,
			    'MIME::QuotedPrint'	=> 0,
			    'Proc::WaitStat'	=> 0,
    },
    VERSION_FROM	=> 'mime-construct',
);

sub MY::dist_core {
    return q(dist:; @echo "use dpkg-buildpackge, not make dist" >&2; false);
}
