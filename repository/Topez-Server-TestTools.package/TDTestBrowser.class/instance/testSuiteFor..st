private
testSuiteFor: aTestCollection
  | suite |
  suite := TestSuite named: 'temp'.
  suite addTests: aTestCollection.
  ^ suite