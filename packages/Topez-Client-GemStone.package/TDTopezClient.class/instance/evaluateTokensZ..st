as yet unclassified
evaluateTokensZ: tokens
  | stonString |
  stonString := STON toString: tokens.
  ^ self session
    executeStringExpectingStringNB:
      '(TDTopezServer for: ' , self shell shellId asString , ') evaluateSTONTokens:' , stonString printString