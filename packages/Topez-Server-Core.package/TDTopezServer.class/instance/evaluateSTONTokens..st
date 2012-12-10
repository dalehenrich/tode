accessing
evaluateSTONTokens: stonTokens
    | tokens text |
    tokens := STON fromString: stonTokens.
    lastResult := self evaluateTokens: tokens objIn: lastResult.
    text := lastResult renderText: #'display'.
    ^ STON toString: text