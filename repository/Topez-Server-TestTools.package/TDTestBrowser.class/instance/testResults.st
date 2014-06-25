accessing
testResults
  testResults ifNil: [ testResults := TestResult new ].
  ^ testResults