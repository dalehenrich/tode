private
runTestCases: testCases listElement: listElement
  self resetResultsBeforeRun: testCases.
  self currentTestCase: 'running...'.
  listElement topez refreshViewFor: self windowId.
  self
    runTestSuite: (self testSuiteFor: testCases)
    with: testResults
    refreshing: [ 
      self applyTestResults.
      listElement topez refreshViewFor: self windowId ].
  self finishedTestResults.
  listElement topez refreshViewFor: self windowId.
  ^ true