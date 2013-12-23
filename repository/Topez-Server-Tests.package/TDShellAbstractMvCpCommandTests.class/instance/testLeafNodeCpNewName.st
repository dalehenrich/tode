tests
testLeafNodeCpNewName
  | srcNode destNode rootPath compareBlock |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  compareBlock := [ :aNode :bNode :nodeOperator | 
  self assert: (bNode perform: nodeOperator with: aNode).
  self assert: bNode contents = aNode contents.
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
      compareBlock value: childNode value: copyNode value: self copyNodeOperator.
      node := self topez lookup: destNode printString , newName.
      compareBlock value: childNode value: node value: self copyNodeOperator.
      compareBlock value: copyNode value: node value: self moveNodeOperator ]