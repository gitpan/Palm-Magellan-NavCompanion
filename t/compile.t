# $Id: compile.t 1309 2004-08-29 05:45:27Z comdog $

BEGIN { @classes = qw( Palm::Magellan::NavCompanion ) }

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}

