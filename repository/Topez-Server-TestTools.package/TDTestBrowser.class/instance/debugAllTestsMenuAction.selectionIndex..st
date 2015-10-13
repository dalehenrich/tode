menu actions
debugAllTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Debug ALL tests================'.
  self initResults.
  self currentTestCase: 'running...'.
  listElement topez refreshViewFor: self windowId.
  self
    debugTestSuite: self testSuite
    with: testResults
    refreshing: [ 
      self applyTestResults.
      listElement topez refreshViewFor: self windowId ].
  self finishedTestResults.
  listElement topez refreshViewFor: self windowId.
  ^ true