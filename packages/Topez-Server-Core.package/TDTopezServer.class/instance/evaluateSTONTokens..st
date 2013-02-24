accessing
evaluateSTONTokens: stonTokens
  | tokens text |
  self ensureSessionMethodsEnabled.
  tokens := STON fromString: stonTokens.
  objIn value: (self evaluateTokens: tokens objIn: objIn value).
  self ensureSessionMethodsEnabled.
  text := self renderAsText: objIn value.
  ^ STON toString: text