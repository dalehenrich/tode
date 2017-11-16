evaluation
evaluate: aString in: compilationContext tempSymbolList: tempSymbolList
  ^ (self
    compile: aString
    inContext: compilationContext
    tempSymbolList: tempSymbolList) _executeInContext: compilationContext