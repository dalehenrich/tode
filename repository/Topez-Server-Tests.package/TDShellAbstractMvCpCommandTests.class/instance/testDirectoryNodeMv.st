tests
testDirectoryNodeMv
  | srcNode destNode rootPath copyDirNode compareBlock parentNode noSrcNode srcParentNode |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  srcParentNode := srcNode parent.
  destNode := self lookupDestNode: rootPath , 'dest'.
  self standardLeafNodes do: [ :childNode | srcNode addChildNode: childNode ].
  copyDirNode := self topez
    evaluateCommandString:
      'mv ' , srcNode printString , ' ' , destNode printString.
  compareBlock := [ :aNode :bNode :nodeOperator :nameOperator | 
  self assert: (bNode perform: nodeOperator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: (bNode name perform: nameOperator with: aNode name).
  self assert: bNode parent == parentNode ].
  parentNode := self lookupDestNode: destNode printString , 'src/'.
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez lookup: parentNode printString , childNode name.
      compareBlock
        value: childNode
        value: copyNode
        value: #'=='
        value: #'=' ].
  noSrcNode := false.
  srcParentNode childNamed: srcNode name ifAbsent: [ noSrcNode := true ].
  self assert: noSrcNode