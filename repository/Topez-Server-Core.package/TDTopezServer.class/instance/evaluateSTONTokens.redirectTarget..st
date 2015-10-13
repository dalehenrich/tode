accessing
evaluateSTONTokens: stonTokens redirectTarget: aRedirectTarget
  | tokens result text |
  self ensureSessionMethodsEnabled.
  tokens := self objectSerializer fromString: stonTokens.
  redirectTarget := aRedirectTarget.
  result := self evaluateTokens: tokens objIn: objIn value.
  self objIn: result resultObject.
  self redirectObjIn: redirectTarget.
  self ensureSessionMethodsEnabled.
  text := result renderAsTextFor: self.
  ^ self objectSerializer toString: text