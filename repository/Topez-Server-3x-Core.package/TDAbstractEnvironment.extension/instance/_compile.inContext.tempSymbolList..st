*topez-server-3x-core
_compile: aString inContext: compilationContext tempSymbolList: tempSymbolList
  ^ self _compileBlock: [ :symbolList | ^ aString
        _compileInContext: compilationContext
        symbolList: symbolList , tempSymbolList
        oldLitVars: nil
        environmentId: self methodCompilationEnvironment
        flags: 0 ]