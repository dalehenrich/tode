#!/bin/bash

set -ex

$GS_HOME/bin/devKitCommandLine serverDoIt $1 << EOF
  | testReport |
  testReport := SmalltalkCI runCIFor: '$BASE/tests/smalltalkCI.ston'  produceXMLLog: false.
  System commitTransaction.
  ((testReport suiteFailures > 0) or: [testReport suiteErrors > 0 ])
    ifTrue: [
      "exit with non-zero exit status"
      System logout ].
EOF

