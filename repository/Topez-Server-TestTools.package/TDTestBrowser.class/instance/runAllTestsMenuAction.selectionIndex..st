menu actions
runAllTestsMenuAction: listElement selectionIndex: selectionIndex
  self initResults.
  self
    runTestSuite: testSuite
    with: testResults
    refreshing: [ 
      self applyTestResults.
      listElement topez refreshViewFor: self windowId ].
  self finishedTestResults.
  listElement topez refreshViewFor: self windowId.
  ^ true