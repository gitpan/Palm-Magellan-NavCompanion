# $Id: Makefile.PL,v 1.2 2004/08/29 19:42:17 comdog Exp $
use ExtUtils::MakeMaker;

eval { use Test::Manifest };

unless( $@ )
	{
	sub ExtUtils::MM_Any::test_via_harness
		{
		my($self, $perl, $tests) = @_;
	
		return qq|\t$perl "-MTest::Manifest" | .
			   qq|"-e" "run_t_manifest(\$(TEST_VERBOSE), '\$(INST_LIB)', | .
			   qq|'\$(INST_ARCHLIB)')"\n|;
		}
	}
	
WriteMakefile
	(
	'NAME'           => 'Palm::Magellan::NavCompanion',
	'VERSION_FROM'   => 'lib/NavCompanion.pm',

	'PM'             => {
		'lib/NavCompanion.pm'     => '$(INST_LIBDIR)/NavCompanion.pm',
		},

	'PREREQ_PM'      => {
		'Test::More'       => '0',
		},

	'MAN3PODS'       => {
		'lib/NavCompanion.pm' => '$(INST_MAN3DIR)/Palm::Magellan::NavCompanion.3',
		},

	clean => { FILES => 'Palm-Magellan-*' },
	);
