tests
testError
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ self ].
  1 perform: #'foo'