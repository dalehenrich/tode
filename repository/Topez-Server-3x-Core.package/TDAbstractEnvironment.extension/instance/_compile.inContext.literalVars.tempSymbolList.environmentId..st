*topez-server-3x-core
_compile: aString inContext: compilationContext literalVars: litVarArrayOrNil tempSymbolList: tempSymbolList environmentId: environmentId
  ^ self
    _compileBlock: [ :symbolList | 
      ^ aString
        _compileInContext: compilationContext
        symbolList: symbolList , tempSymbolList
        oldLitVars: litVarArrayOrNil
        environmentId: environmentId
        flags: 0 ]