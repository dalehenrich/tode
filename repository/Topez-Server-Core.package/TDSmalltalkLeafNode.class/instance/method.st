as yet unclassified
method
  "arrange to handle undefined symbols ... senders and references still useful"

  | compileBlock |
  compileBlock := [ :aSymbolList | self contents
    _compileInContext: self sourceCompilationContext
    symbolList: aSymbolList ].
  ^ self
    compileHandlingUndeclaredSymbols: compileBlock
    with: self topez devSymbolList