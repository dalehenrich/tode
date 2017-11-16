accessing
evaluateSTONSmalltalk: smalltalkSource
  | result |
  self ensureSessionMethodsEnabled.
  result := self evaluateString: smalltalkSource inContext: nil.
  self ensureSessionMethodsEnabled.
  ^ self objectSerializer toString: result