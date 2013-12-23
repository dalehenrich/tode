tests
testDirectoryNodeMvNewName
  | srcNode destNode rootPath compareBlock parentNode newName originalNodes |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  newName := 'src_NEW'.
  originalNodes := self standardLeafNodes
    collect: [ :childNode | srcNode addChildNode: childNode ].
  self topez
    evaluateCommandString:
      'mv ' , srcNode printString , ' ' , destNode printString , newName.
  compareBlock := [ :aNode :bNode :nodeOperator :nameOperator | 
  self assert: (bNode perform: nodeOperator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: (bNode name perform: nameOperator with: aNode name).
  self assert: bNode parent == parentNode ].
  parentNode := self lookupDestNode: destNode printString , newName.
  originalNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez lookup: parentNode printString , childNode name.
      compareBlock
        value: childNode
        value: copyNode
        value: #'=='
        value: #'=' ]