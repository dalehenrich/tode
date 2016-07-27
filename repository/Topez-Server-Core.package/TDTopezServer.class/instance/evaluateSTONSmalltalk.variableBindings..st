accessing
evaluateSTONSmalltalk: smalltalkSource variableBindings: variableBindingsSTONString
  | result variableBindings |
  variableBindings := self objectSerializer
    fromString: variableBindingsSTONString.
  result := self
    evaluateSmalltalk: smalltalkSource
    variableBindings: variableBindings.
  ^ self objectSerializer toString: result