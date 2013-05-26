accessing
evaluateSTONTokens: stonTokens redirectTarget: aRedirectTarget
  | tokens result text |
  self ensureSessionMethodsEnabled.
  tokens := STON fromString: stonTokens.
  redirectTarget := aRedirectTarget.
  result := self evaluateTokens: tokens objIn: objIn value.
  objIn value: result resultObject.
  self redirectObjIn: redirectTarget.
  self ensureSessionMethodsEnabled.
  text := result renderAsTextFor: self.
  ^ STON toString: text