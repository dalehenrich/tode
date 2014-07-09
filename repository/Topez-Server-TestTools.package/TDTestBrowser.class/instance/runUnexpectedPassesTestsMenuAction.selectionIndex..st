menu actions
runUnexpectedPassesTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Run UNEXPECTED PASS tests================'.
  self runTestCases: unexpectedPasses listElement: listElement.
  ^ true