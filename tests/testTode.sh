#!/bin/bash

set -ex

# project new command tests need this
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

$GS_HOME/bin/devKitCommandLine serverDoIt $1 << EOF
  | testReport |
  testReport := SmalltalkCI runCIFor: '$BASE/tests/smalltalkCI.ston'  produceXMLLog: false.
  System commitTransaction.
  ((testReport suiteFailures > 0) or: [testReport suiteErrors > 0 ])
    ifTrue: [
      "exit with non-zero exit status"
      System logout ].
EOF

