menu actions
inspectItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString.
  result inspect.
  ^ true