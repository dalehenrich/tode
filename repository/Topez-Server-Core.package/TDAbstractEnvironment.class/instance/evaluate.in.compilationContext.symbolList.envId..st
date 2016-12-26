evaluation
evaluate: aString in: evalContext compilationContext: compilationContext symbolList: symbolList envId: envId
  ^ (self
    compile: aString
    inContext: compilationContext
    symbolList: symbolList
    envId: envId) _executeInContext: evalContext