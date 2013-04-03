as yet unclassified
evaluateTokens: tokens
  | stonString |
  stonString := STON toString: tokens.
  ^ self session
    executeStringExpectingStringNB:
      '(' , self todeServerAccessString , ' for: ' , self shell shellId asString
        , ') evaluateSTONTokens:' , stonString printString
    envId: self environmentId