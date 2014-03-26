menu actions
debugItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString.
  ^ nil