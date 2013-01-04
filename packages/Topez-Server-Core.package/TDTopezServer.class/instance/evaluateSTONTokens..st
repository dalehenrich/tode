accessing
evaluateSTONTokens: stonTokens
  | tokens text |
  tokens := STON fromString: stonTokens.
  objIn := self evaluateTokens: tokens objIn: nil.
  text := objIn renderText: #'display'.
  ^ STON toString: text