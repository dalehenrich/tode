menu actions
runErrorsTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Run ERROR tests================'.
  self runTestCases: unexpectedErrors listElement: listElement.
  ^ true