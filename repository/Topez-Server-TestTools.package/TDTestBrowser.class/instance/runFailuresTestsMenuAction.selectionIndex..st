menu actions
runFailuresTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Run FAILURE tests================'.
  self runTestCases: unexpectedFailures listElement: listElement.
  ^ true