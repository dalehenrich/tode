tests
testLeafNodeMvNewName
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
      | mvNode node newName noSrcChild |
      srcNode addChildNode: childNode.
      newName := childNode name , '_NEW'.
      mvNode := self topez
        evaluateCommandString:
          'mv ' , srcNode printString , childNode name , ' ' , destNode printString
            , newName.
      compareBlock value: childNode value: mvNode value: self moveNodeOperator.
      node := self topez lookup: destNode printString , newName.
      compareBlock value: childNode value: node value: self moveNodeOperator.
      compareBlock value: mvNode value: node value: self moveNodeOperator.
      noSrcChild := false.
      srcNode childNamed: childNode name ifAbsent: [ noSrcChild := true ].
      self assert: noSrcChild ]