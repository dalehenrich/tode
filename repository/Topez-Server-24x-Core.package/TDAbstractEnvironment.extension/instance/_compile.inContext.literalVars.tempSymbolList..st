*topez-server-24x-core
_compile: aString inContext: compilationContext literalVars: litVarArrayOrNil tempSymbolList: tempSymbolList
  ^ self
    _compileBlock: [ :symbolList | 
      ^ aString
        _compileInContext: compilationContext
        symbolList: symbolList , tempSymbolList
        oldLitVars: litVarArrayOrNil
        environmentId: self methodCompilationEnvironmentId
        flags: 0 ]
