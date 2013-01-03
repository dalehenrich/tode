as yet unclassified
evaluateTokensY: tokens
  | stonString |
  stonString := STON toString: tokens.
  ^ self session
    executeStringNB:
      '(TDTopezServer for: ' , self shell shellId asString , ') evaluateSTONTokens:' , stonString printString