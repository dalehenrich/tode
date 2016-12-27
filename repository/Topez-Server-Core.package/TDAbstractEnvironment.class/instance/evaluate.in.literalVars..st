evaluation
evaluate: aString in: compilationContext literalVars: litVarArrayOrNil
  ^ (self
    compile: aString
    inContext: compilationContext
    literalVars: litVarArrayOrNil) _executeInContext: compilationContext