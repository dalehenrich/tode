#!/bin/bash

set -ex

$GS_HOME/bin/devKitCommandLine todeIt $1 << EOF
project clone --https --stone SmalltalkCI
project load SmalltalkCI
EOF

