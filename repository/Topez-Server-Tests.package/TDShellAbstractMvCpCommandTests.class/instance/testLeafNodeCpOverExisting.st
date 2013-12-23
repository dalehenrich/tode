tests
testLeafNodeCpOverExisting
  | srcNode destNode rootPath compareBlock targetNodeMaster |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  targetNodeMaster := self differentLeafNodes at: 1.
  targetNodeMaster name: 'targetMaster'.
  compareBlock := [ :aNode :bNode :operator | 
  self assert: (bNode perform: operator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: bNode name = aNode name.
  self assert: bNode parent == destNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode node targetNode noTargetChild |
      targetNode := targetNodeMaster copy
        name: childNode name;
        yourself.
      targetNode := destNode addChildNode: targetNode.
      srcNode addChildNode: childNode.
      copyNode := self topez
        evaluateCommandString:
          'cp ' , srcNode printString , childNode name , ' ' , targetNode printString.
      compareBlock value: childNode value: copyNode value: self copyNodeOperator.
      node := self topez lookup: destNode printString , childNode name.
      compareBlock value: childNode value: node value: self copyNodeOperator.
      compareBlock value: copyNode value: node value: self moveNodeOperator.
      noTargetChild := false.
      srcNode
        childNamed: targetNodeMaster name
        ifAbsent: [ noTargetChild := true ].
      self assert: noTargetChild ]