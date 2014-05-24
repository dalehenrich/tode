as yet unclassified
gateway
  | currentNode |
  currentNode := self topez currentNode.
  [ 
  topez currentNode: self parent.
  ^ topez evaluateString: self contents inContext: self sourceCompilationContext ]
    ensure: [ topez currentNode: currentNode ]