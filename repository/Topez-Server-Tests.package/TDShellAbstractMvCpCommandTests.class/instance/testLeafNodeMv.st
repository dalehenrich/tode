tests
testLeafNodeMv
  | srcNode destNode rootPath compareBlock |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  compareBlock := [ :aNode :bNode :operator | 
  self assert: (bNode perform: operator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: bNode parent == destNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | mvNode node noSrcChild |
      srcNode addChildNode: childNode.
      mvNode := self topez
        evaluateCommandString:
          'mv ' , srcNode printString , childNode name , ' ' , destNode printString.
      compareBlock value: childNode value: mvNode value: #'=='.
      node := self lookupDestNode: destNode printString , childNode name.
      compareBlock value: childNode value: node value: #'=='.
      compareBlock value: mvNode value: node value: #'=='.
      noSrcChild := false.
      srcNode childNamed: childNode name ifAbsent: [ noSrcChild := true ].
      self assert: noSrcChild ]