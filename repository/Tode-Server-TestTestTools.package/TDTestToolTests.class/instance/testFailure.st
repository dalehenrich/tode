tests
testFailure
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ self ].
  self assert: false