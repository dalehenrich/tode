tests
testLeafNodeCpNewName
  | srcNode destNode rootPath compareBlock |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  compareBlock := [ :aNode :bNode :nodeOperator :nameOperator | 
  self assert: (bNode perform: nodeOperator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: (bNode name perform: nameOperator with: aNode name).
  self assert: bNode parent == destNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode node newName |
      srcNode addChildNode: childNode.
      newName := childNode name , '_NEW'.
      copyNode := self topez
        evaluateCommandString:
          'cp ' , srcNode printString , childNode name , ' ' , destNode printString
            , newName.
      compareBlock
        value: childNode
        value: copyNode
        value: #'~~'
        value: #'~='.
      node := self topez lookup: destNode printString , newName.
      compareBlock
        value: childNode
        value: node
        value: #'~~'
        value: #'~='.
      compareBlock
        value: copyNode
        value: node
        value: #'=='
        value: #'=' ]