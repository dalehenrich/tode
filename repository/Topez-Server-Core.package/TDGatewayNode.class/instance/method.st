as yet unclassified
method
  | currentNode |
  currentNode := self topez currentNode.
  [ 
  | compileBlock |
  topez currentNode: self parent.
  compileBlock := [ :aSymbolList | 
  self contents
    _compileInContext: self sourceCompilationContext
    symbolList: aSymbolList ].
  ^ self
    compileHandlingUndeclaredSymbols: compileBlock
    with: GsSession currentSession symbolList ]
    ensure: [ topez currentNode: currentNode ]