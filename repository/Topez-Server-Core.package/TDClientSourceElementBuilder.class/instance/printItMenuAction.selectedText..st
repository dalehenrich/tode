menu actions
printItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString.
  ^ STON
    toString:
      {#'insertAfterSelection:'.
      (result printString)}