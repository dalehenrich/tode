menu actions
debugTestMenuAction: listElement selectionIndex: selectionIndex
  "listElement topez refreshViewFor: self windowId"

  | testCase |
  testCase := self testCasesAtResultSlot at: selectionIndex - 2.
  testCase debug.
  self inform: 'finished with test'.
  ^ #'refresh'