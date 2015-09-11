accessing
testSuite
  testSuite
    ifNil: [ 
      | suite |
      suite := self testSuiteBlock value.
      tests := suite tests.
      ^ suite ].
  ^ testSuite