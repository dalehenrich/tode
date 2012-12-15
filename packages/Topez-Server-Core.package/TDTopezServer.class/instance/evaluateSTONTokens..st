accessing
evaluateSTONTokens: stonTokens
    | tokens text |
    tokens := STON fromString: stonTokens.
    objIn := self evaluateTokens: tokens objIn: objIn.
    text := objIn renderText: #'display'.
    ^ STON toString: text