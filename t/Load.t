# $Id: Load.t,v 1.1.1.1 2004/08/29 05:45:28 comdog Exp $

use Test::More tests => 3;

use_ok( 'Palm::Magellan::NavCompanion' );
use_ok( 'Palm::PDB' );

my $pdb = Palm::PDB->new();
isa_ok( $pdb, 'Palm::PDB' );

$pdb->Load( 'files/waypoints.pdb' );