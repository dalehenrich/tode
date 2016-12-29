menu actions
editItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString topez: listElement topez.
  result edit: listElement topez.
  ^ true