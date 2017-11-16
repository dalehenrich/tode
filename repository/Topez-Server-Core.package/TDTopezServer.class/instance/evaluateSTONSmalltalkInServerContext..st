accessing
evaluateSTONSmalltalkInServerContext: smalltalkSource
  | result |
  self ensureSessionMethodsEnabled.
  result := self evaluateString: smalltalkSource inContext: self.
  self ensureSessionMethodsEnabled.
  ^ self objectSerializer toString: result