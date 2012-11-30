accessing
evaluateSTONTokens: stonTokens
    | tokens text |
    tokens := STON fromString: stonTokens.
    text := (self evaluateTokens: tokens) renderText.
    ^ STON toString: text