compilation
compile: aString inContext: compilationContext
  ^ self
    _compile: aString
    inContext: compilationContext
    tempSymbolList: SymbolList new