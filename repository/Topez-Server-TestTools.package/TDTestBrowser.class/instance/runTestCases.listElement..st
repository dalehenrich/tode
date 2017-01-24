private
runTestCases: testCases listElement: listElement
  self resetResultsBeforeRun: testCases.
  self currentTestCase: 'running...'.
  self
    runTestSuite: (self testSuiteFor: testCases)
    with: testResults
    refreshing: [ self applyTestResults.
      self refreshViewOn: listElement ].
  self finishedTestResults.
  self forceRefreshViewOn: listElement.
  ^ true