accessing
evaluateSTONTokens: stonTokens
  | tokens result text |
  self ensureSessionMethodsEnabled.
  tokens := STON fromString: stonTokens.
  result := self evaluateTokens: tokens objIn: objIn value.
  objIn value: result resultObject.
  self ensureSessionMethodsEnabled.
  text := result renderAsTextFor: self.
  ^ STON toString: text