menu actions
runAllTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Run ALL tests================'.
  self initResults.
  self currentTestCase: 'running...'.
  listElement topez refreshViewFor: self windowId.
  self
    runTestSuite: testSuite
    with: testResults
    refreshing: [ 
      self applyTestResults.
      listElement topez refreshViewFor: self windowId ].
  self finishedTestResults.
  listElement topez refreshViewFor: self windowId.
  ^ true