# $Id: compile.t,v 1.1.1.1 2004/08/29 05:45:28 comdog Exp $

BEGIN { @classes = qw( Palm::Magellan::NavCompanion ) }

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}

