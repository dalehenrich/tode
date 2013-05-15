as yet unclassified
evaluateTokens: tokens redirectTarget: redirectTarget
  | stonString |
  stonString := STON toString: tokens.
  ^ self session
    executeStringExpectingStringNB:
      '(' , self todeServerAccessString , ' for: ' , self shell shellId asString
        , ') evaluateSTONTokens:' , stonString printString , ' redirectTarget: '
        , redirectTarget printString
    envId: self environmentId