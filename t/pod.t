# $Id: pod.t 1309 2004-08-29 05:45:27Z comdog $

use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();