debug
debug: aString in: compilationContext literalVars: litVarArray
  | meth |
  meth := self
    compile: aString
    inContext: compilationContext
    literalVars: litVarArray.
  meth setBreakAtStepPoint: 1.
  ^ meth _executeInContext: compilationContext