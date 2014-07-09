menu actions
runPassesTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Run PASS tests================'.
  self runTestCases: expectedPasses listElement: listElement.
  ^ true