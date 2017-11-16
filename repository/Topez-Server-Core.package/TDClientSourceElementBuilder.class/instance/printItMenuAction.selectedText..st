menu actions
printItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString topez: listElement topez.
  ^ listElement objectSerializer toString: {#'insertAfterSelection:'.
      (result printString)}