tests
testLeafNodeMv
  | srcNode destNode rootPath compareBlock |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  compareBlock := [ :aNode :bNode | 
  self assert: bNode contents = aNode contents.
  self assert: bNode name = aNode name ].
  self standardLeafNodes
    do: [ :childNode | 
      | mvNode node noSrcChild |
      srcNode addChildNode: childNode.
      mvNode := self
        evaluateCommandString:
          'mv ' , srcNode printString , childNode name , ' ' , destNode printString.
      compareBlock value: childNode value: mvNode.
      node := self topez lookup: destNode printString , childNode name.
      compareBlock value: childNode value: node.
      compareBlock value: mvNode value: node.
      noSrcChild := false.
      srcNode childNamed: childNode name ifAbsent: [ noSrcChild := true ].
      self assert: noSrcChild ]