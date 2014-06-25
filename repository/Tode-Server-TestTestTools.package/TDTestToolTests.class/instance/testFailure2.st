tests
testFailure2
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ self ].
  self assert: false