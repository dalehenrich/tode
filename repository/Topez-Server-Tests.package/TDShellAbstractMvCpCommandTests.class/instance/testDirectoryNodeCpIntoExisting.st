tests
testDirectoryNodeCpIntoExisting
  | srcNode destNode rootPath compareBlock parentNode targetNodeMaster |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  targetNodeMaster := self differentLeafNodes at: 1.
  targetNodeMaster name: 'targetMaster'.
  self standardLeafNodes do: [ :childNode | srcNode addChildNode: childNode ].
  self topez
    evaluateCommandString:
      'cp ' , srcNode printString , ' ' , destNode printString.
  compareBlock := [ :aNode :bNode :nodeOperator :nameOperator | 
  self assert: (bNode perform: nodeOperator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: (bNode name perform: nameOperator with: aNode name).
  self assert: bNode parent == parentNode ].
  parentNode := self topez lookup: destNode printString , 'src'.
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez lookup: parentNode printString , childNode name.
      compareBlock
        value: childNode
        value: copyNode
        value: self copyNodeOperator
        value: #'=' ]