*topez-server-3x-core
_compile: aString inContext: compilationContext
  ^ self _compileBlock: [ :symbolList | ^ aString
        _compileInContext: compilationContext
        symbolList: symbolList
        oldLitVars: nil
        environmentId: self methodCompilationSymbolList
        flags: 0 ]