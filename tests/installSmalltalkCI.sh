#!/bin/bash

set -ex

$GS_HOME/bin/devKitCommandLine todeIt $1 << EOF
project install --url=http://gsdevkit.github.io/GsDevKit_home/SmalltalkCI.ston
project load SmalltalkCI
EOF

