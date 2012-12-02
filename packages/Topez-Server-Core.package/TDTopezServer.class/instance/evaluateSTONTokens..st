accessing
evaluateSTONTokens: stonTokens
    | tokens text |
    tokens := STON fromString: stonTokens.
    text := (self evaluateTokens: tokens) renderText: #display.
    ^ STON toString: text