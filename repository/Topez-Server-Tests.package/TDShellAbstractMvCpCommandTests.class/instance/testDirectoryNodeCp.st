tests
testDirectoryNodeCp
  | srcNode destNode rootPath copyDirNode compareBlock parentNode |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  self standardLeafNodes do: [ :childNode | srcNode addChildNode: childNode ].
  copyDirNode := self topez
    evaluateCommandString:
      'cp ' , srcNode printString , ' ' , destNode printString.
  compareBlock := [ :aNode :bNode :nodeOperator :nameOperator | 
  self assert: (bNode perform: nodeOperator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: (bNode name perform: nameOperator with: aNode name) ].
  parentNode := self topez lookup: destNode printString , 'src/'.
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez lookup: parentNode printString , childNode name.
      compareBlock
        value: childNode
        value: copyNode
        value: self copyNodeOperator
        value: self moveNodeOperator ]