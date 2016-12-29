menu actions
inspectItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString topez: listElement topez.
  result inspect.
  ^ true