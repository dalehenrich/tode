tests
testPass
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ self ]