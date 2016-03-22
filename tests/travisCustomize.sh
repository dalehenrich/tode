#!/usr/bin/env bash
#

set -xe  # print commands and exit on error

# no backups on travis
cp $GS_HOME/tests/sys/local/client/tode-scripts/* $GS_HOME/sys/local/client/tode-scripts

# use the current checkout of the tODE repo
cp $BASE/tests/sys/local/gsdevkit_bin/* $GS_HOME/sys/local/gsdevkit_bin

