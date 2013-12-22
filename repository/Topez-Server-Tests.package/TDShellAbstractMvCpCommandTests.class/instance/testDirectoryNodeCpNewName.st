tests
testDirectoryNodeCpNewName
  | srcNode destNode rootPath compareBlock parentNode newName |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  newName := 'src_NEW'.
  self standardLeafNodes do: [ :childNode | srcNode addChildNode: childNode ].
  self topez
    evaluateCommandString:
      'cp ' , srcNode printString , ' ' , destNode printString , newName.
  compareBlock := [ :aNode :bNode :nodeOperator :nameOperator | 
  self assert: (bNode perform: nodeOperator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: (bNode name perform: nameOperator with: aNode name).
  self assert: bNode parent == parentNode ].
  parentNode := self lookupDestNode: destNode printString , newName.
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez lookup: parentNode printString , childNode name.
      compareBlock
        value: childNode
        value: copyNode
        value: #'~~'
        value: #'=' ]