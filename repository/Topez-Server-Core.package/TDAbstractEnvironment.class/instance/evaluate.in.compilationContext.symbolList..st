evaluation
evaluate: aString in: evalContext compilationContext: compilationContext symbolList: symbolList
  ^ (self compile: aString inContext: compilationContext symbolList: symbolList)
    _executeInContext: evalContext