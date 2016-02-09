#!/usr/bin/env bash
#

set -xe  # print commands and exit on error

# no backups on travis
cp $GS_HOME/tests/sys/local/client/tode-scripts/* $GS_HOME/sys/local/client/tode-scripts

# use the current checkout of the tODE repo
cp $BASE/tests/sys/local/gsdevkit_bin/* $GS_HOME/sys/local/gsdevkit_bin

# add SmalltalkCI project entry for running tests until smalltalkCI can be used directly
cp $BASE/tests/sys/local/server/projects/* $GS_HOME/sys/local/server/projects
