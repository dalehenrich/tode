tests
testDirectoryNodeMvIntoExisting
  | srcNode destNode rootPath compareBlock parentNode targetNodeMaster originalNodes |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  targetNodeMaster := self differentLeafNodes at: 1.
  targetNodeMaster name: 'targetMaster'.
  originalNodes := self standardLeafNodes
    collect: [ :childNode | srcNode addChildNode: childNode ].
  self topez
    evaluateCommandString:
      'mv ' , srcNode printString , ' ' , destNode printString.
  compareBlock := [ :aNode :bNode :nodeOperator :nameOperator | 
  self assert: (bNode perform: nodeOperator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: (bNode name perform: nameOperator with: aNode name).
  self assert: (bNode parent perform: self moveNodeOperator with: parentNode) ].
  parentNode := self topez lookup: destNode printString , 'src'.
  originalNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez lookup: parentNode printString , childNode name.
      compareBlock
        value: childNode
        value: copyNode
        value: self moveNodeOperator
        value: #'=' ]