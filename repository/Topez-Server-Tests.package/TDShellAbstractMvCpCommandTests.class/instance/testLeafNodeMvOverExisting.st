tests
testLeafNodeMvOverExisting
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
      | mvNode node targetNode noTargetChild noSrcChild |
      targetNode := targetNodeMaster copy
        name: childNode name;
        yourself.
      targetNode := destNode addChildNode: targetNode.
      srcNode addChildNode: childNode.
      mvNode := self topez
        evaluateCommandString:
          'mv ' , srcNode printString , childNode name , ' ' , targetNode printString.
      compareBlock value: childNode value: mvNode value: self moveNodeOperator.
      node := self topez lookup: destNode printString , childNode name.
      compareBlock value: childNode value: node value: self moveNodeOperator.
      compareBlock value: mvNode value: node value: self moveNodeOperator.
      noTargetChild := false.
      srcNode
        childNamed: targetNodeMaster name
        ifAbsent: [ noTargetChild := true ].
      self assert: noTargetChild.
      noSrcChild := false.
      srcNode childNamed: childNode name ifAbsent: [ noSrcChild := true ].
      self assert: noSrcChild ]