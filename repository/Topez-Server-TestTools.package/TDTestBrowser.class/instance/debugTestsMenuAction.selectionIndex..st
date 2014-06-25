menu actions
debugTestsMenuAction: listElement selectionIndex: selectionIndex
  "listElement topez refreshViewFor: self windowId"

  | testCase |
  testCase := (resultArray at: resultSlot) at: selectionIndex - 2.
  testCase debug.
  ^ #'refresh'