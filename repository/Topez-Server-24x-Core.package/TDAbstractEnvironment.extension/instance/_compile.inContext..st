*topez-server-24x-core
_compile: aString inContext: compilationContext
  self _compileBlock: [ :symbolList | 
    ^ aString
      _compileInContext: compilationContext
      symbolList: symbolList ]
