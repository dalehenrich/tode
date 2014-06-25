tests
expectedFailures
  "self class enableTests: true"

  self enableTests
    ifFalse: [ ^ #() ].
  ^ #(#'testExpectedDefect' #'testUnexpectedPass')