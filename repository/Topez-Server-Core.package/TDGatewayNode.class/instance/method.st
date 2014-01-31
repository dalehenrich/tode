as yet unclassified
method
  | currentNode |
  currentNode := self topez currentNode.
  [ 
  topez currentNode: self parent.
  ^ self contents
    _compileInContext: self sourceCompilationContext
    symbolList: GsSession currentSession symbolList ]
    ensure: [ topez currentNode: currentNode ]