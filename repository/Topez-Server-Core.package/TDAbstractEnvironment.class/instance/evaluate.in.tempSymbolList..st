evaluation
evaluate: aString in: evalContext tempSymbolList: tempSymbolList
  ^ (self compile: aString inContext: evalContext tempSymbolList: tempSymbolList)
    _executeInContext: evalContext