tests
testUnexpectedPass
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ self ]