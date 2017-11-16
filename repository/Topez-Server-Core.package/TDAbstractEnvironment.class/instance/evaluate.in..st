evaluation
evaluate: aString in: compilationContext
  ^ (self compile: aString inContext: compilationContext)
    _executeInContext: compilationContext