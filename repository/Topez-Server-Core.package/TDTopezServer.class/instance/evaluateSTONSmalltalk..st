accessing
evaluateSTONSmalltalk: smalltalkSource
  | result |
  self ensureSessionMethodsEnabled.
  result := smalltalkSource evaluate.
  self ensureSessionMethodsEnabled.
  ^ self objectSerializer toString: result