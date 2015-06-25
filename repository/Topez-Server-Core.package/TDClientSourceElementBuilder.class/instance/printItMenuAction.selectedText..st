menu actions
printItMenuAction: listElement selectedText: selectedString
  | result |
  result := self evaluateString: selectedString.
  ^ STON
    toUTF8EncodedString:
      {#'insertAfterSelection:'.
      (result printString)}