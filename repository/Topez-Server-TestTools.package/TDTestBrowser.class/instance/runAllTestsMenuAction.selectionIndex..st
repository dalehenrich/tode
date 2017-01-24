menu actions
runAllTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Run ALL tests================'.
  self initResults.
  self currentTestCase: 'running...'.
  self
    runTestSuite: self testSuite
    with: testResults
    refreshing: [ self applyTestResults.
      self refreshViewOn: listElement ].
  self finishedTestResults.
  self forceRefreshViewOn: listElement.
  ^ true