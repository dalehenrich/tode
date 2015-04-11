accessing
evaluateSTONSmalltalk: smalltalkSource
  | result |
  self ensureSessionMethodsEnabled.
  result := smalltalkSource evaluate.
  self ensureSessionMethodsEnabled.
  ^ STON toString: result