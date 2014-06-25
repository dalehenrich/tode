tests
testError2
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ self ].
  1 perform: #'foo'