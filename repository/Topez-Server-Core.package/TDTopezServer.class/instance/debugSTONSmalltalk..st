accessing
debugSTONSmalltalk: smalltalkSource
  | result |
  self ensureSessionMethodsEnabled.
  result := (self applicationEnvironmentFor: nil)
    debug: smalltalkSource
    in: nil
    literalVars: nil.
  self ensureSessionMethodsEnabled.
  ^ self objectSerializer toString: result