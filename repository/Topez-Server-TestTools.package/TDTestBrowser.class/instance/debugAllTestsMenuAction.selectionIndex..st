menu actions
debugAllTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Debug ALL tests================'.
  self initResults.
  self currentTestCase: 'running...'.
  self
    debugTestSuite: self testSuite
    with: testResults
    refreshing: [ self applyTestResults.
      self refreshViewOn: listElement ].
  self finishedTestResults.
  self forceRefreshViewOn: listElement.
  ^ true