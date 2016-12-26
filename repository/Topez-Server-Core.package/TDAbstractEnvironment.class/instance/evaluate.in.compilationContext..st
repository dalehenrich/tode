evaluation
evaluate: aString in: evalContext compilationContext: compilationContext
  ^ (self compile: aString inContext: compilationContext)
    _executeInContext: evalContext