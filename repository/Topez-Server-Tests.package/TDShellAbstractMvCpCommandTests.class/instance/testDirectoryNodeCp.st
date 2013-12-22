tests
testDirectoryNodeCp
  | srcNode destNode rootPath copyDirNode compareBlock |
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
  self assert: (bNode name perform: nameOperator with: aNode name).
  self assert: bNode parent == destNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self
        lookupDestNode: destNode printString , 'src/' , childNode name.
      compareBlock
        value: childNode
        value: copyNode
        value: #'~~'
        value: #'=' ]