tests
testLongRunnerPass
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ self ].
  false
    ifTrue: [ (Delay forSeconds: 5) wait ]