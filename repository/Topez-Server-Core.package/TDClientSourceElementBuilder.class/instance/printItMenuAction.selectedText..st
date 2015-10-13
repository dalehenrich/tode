menu actions
printItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString.
  ^ listElement objectSerializer
    toString:
      {#'insertAfterSelection:'.
      (result printString)}