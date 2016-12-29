as yet unclassified
method
  | currentNode |
  currentNode := self topez currentNode.
  [ topez currentNode: self parent.
  ^ topez compileString: self contents inContext: self sourceCompilationContext ]
    ensure: [ topez currentNode: currentNode ]