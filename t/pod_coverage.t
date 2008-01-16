# $Id: pod_coverage.t 2091 2007-01-25 19:32:34Z comdog $

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
