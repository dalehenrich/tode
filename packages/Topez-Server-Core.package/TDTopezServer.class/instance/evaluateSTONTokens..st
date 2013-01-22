accessing
evaluateSTONTokens: stonTokens
  | tokens text |
  tokens := STON fromString: stonTokens.
  objIn value: (self evaluateTokens: tokens objIn: objIn value).
  text := objIn value renderText: #'display'.
  ^ STON toString: text