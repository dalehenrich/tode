as yet unclassified
evaluateTokens: tokens
  | stonString |
  stonString := STON toString: tokens.
  Transcript
    cr;
    show: self shell shellId asString.
  ^ self session
    executeStringExpectingStringNB:
      '(TDTopezServer for: ' , self shell shellId asString , ') evaluateSTONTokens:' , stonString printString