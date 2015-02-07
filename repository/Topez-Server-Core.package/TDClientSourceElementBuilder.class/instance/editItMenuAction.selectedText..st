menu actions
editItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString.
  result edit: listElement topez.
  ^ true