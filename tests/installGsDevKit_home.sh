#!/bin/bash

set -ex

sudo hostname travis.dev
$GS_HOME/bin/private/clone_sys_local -c https # pre-clone /sys/local, for travisCustomize.sh
tests/travisCustomize.sh             # no backups on travis and use proposed tODE repo
installServer
createClient tode
createStone travis $GS_VERSION




