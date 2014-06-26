private
runTestCases: testCases listElement: listElement
  self resetResultsBeforeRun: testCases.
  self
    runTestSuite: (self testSuiteFor: testCases)
    with: testResults
    refreshing: [ 
      self applyTestResults.
      listElement topez refreshViewFor: self windowId ].
  self finishedTestResults.
  listElement topez refreshViewFor: self windowId.
  ^ true