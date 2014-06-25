tests
testPass2
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ self ]