tests
testLeafNodeCpOverExisting
  | srcNode destNode rootPath compareBlock targetNodeMaster |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  targetNodeMaster := self differentLeafNodes at: 1.
  targetNodeMaster name: 'targetMaster'.
  compareBlock := [ :aNode :bNode | 
  self assert: bNode contents = aNode contents.
  self assert: bNode name = aNode name ].
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode node targetNode noTargetChild |
      targetNode := targetNodeMaster copy
        name: childNode name;
        yourself.
      targetNode := destNode addChildNode: targetNode.
      srcNode addChildNode: childNode.
      copyNode := self
        evaluateCommandString:
          'cp ' , srcNode printString , childNode name , ' ' , targetNode printString.
      compareBlock value: childNode value: copyNode.
      node := self topez lookup: destNode printString , childNode name.
      compareBlock value: childNode value: node.
      compareBlock value: copyNode value: node.
      noTargetChild := false.
      srcNode
        childNamed: targetNodeMaster name
        ifAbsent: [ noTargetChild := true ].
      self assert: noTargetChild ]