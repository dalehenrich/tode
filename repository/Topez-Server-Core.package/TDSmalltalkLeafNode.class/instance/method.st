as yet unclassified
method
  ^ self contents
    _compileInContext: self sourceCompilationContext
    symbolList: GsSession currentSession symbolList