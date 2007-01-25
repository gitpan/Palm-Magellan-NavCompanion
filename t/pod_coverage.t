# $Id: pod_coverage.t,v 1.2 2007/01/25 19:32:34 comdog Exp $

use Test::More;
eval "use Test::Pod::Coverage 1.08";

if( $@ )
	{
	plan skip_all => "Test::Pod::Coverage required for testing POD";
	}
else
	{
	plan tests => 1;

	pod_coverage_ok( "Palm::Magellan::NavCompanion",
		{
		trustme => [ qr/^Pa*/, qr/new_/ ],
		},
		);      
	}
