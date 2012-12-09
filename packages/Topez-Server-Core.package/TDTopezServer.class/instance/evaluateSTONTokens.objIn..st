accessing
evaluateSTONTokens: stonTokens objIn: objIn
    | tokens text |
    tokens := STON fromString: stonTokens.
    text := (self evaluateTokens: tokens objIn: objIn) renderText: #'display'.
    ^ STON toString: text