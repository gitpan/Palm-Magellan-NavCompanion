# $Id: prereq.t,v 1.2 2004/08/29 19:46:24 comdog Exp $

use Test::More;
eval "use Test::Prereq 1.00";
plan skip_all => "Test::Prereq 1.00 required for testing prereqs" if $@;
prereq_ok();