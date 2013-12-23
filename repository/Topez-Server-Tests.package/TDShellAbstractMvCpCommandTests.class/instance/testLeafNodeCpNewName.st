tests
testLeafNodeCpNewName
  | srcNode destNode rootPath compareBlock |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  compareBlock := [ :aNode :bNode | 
  self assert: bNode contents = aNode contents.
  self assert: bNode name ~= destNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode node newName |
      srcNode addChildNode: childNode.
      newName := childNode name , '_NEW'.
      copyNode := self topez
        evaluateCommandString:
          'cp ' , srcNode printString , childNode name , ' ' , destNode printString
            , newName.
      compareBlock value: childNode value: copyNode.
      node := self topez lookup: destNode printString , newName.
      compareBlock value: childNode value: node.
      compareBlock value: copyNode value: node ]