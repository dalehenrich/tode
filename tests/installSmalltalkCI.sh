#!/bin/bash

set -ex

source ${GS_HOME}/bin/defGsDevKit.env

$GS_HOME/bin/devKitCommandLine todeIt $1 << EOF
project clone --https --stone SmalltalkCI
project load SmalltalkCI
EOF

