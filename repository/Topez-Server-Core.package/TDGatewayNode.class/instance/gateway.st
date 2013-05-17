as yet unclassified
gateway
  | aTopez currentNode |
  aTopez := self topez.
  currentNode := aTopez currentNode.
  [ 
  aTopez currentNode: self parent.
  ^ aTopez
    evaluateString: self contents
    inContext: self sourceCompilationContext ]
    ensure: [ aTopez currentNode: currentNode ]