evaluation
evaluate: aString in: evalContext
  ^ (self compile: aString inContext: evalContext)
    _executeInContext: evalContext