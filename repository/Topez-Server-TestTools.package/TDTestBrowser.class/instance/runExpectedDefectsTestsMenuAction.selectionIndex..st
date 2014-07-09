menu actions
runExpectedDefectsTestsMenuAction: listElement selectionIndex: selectionIndex
  self log: '================Run EXPECETED DEFECT tests================'.
  self runTestCases: expectedDefects listElement: listElement.
  ^ true