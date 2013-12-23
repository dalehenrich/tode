tests
testLeafNodeMvNewName
  | srcNode destNode rootPath compareBlock |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  compareBlock := [ :aNode :bNode :nameOperator | 
  self assert: bNode contents = aNode contents.
  self assert: (bNode name perform: nameOperator with: aNode name) ].
  self standardLeafNodes
    do: [ :childNode | 
      | mvNode node newName noSrcChild |
      srcNode addChildNode: childNode.
      newName := childNode name , '_NEW'.
      mvNode := self topez
        evaluateCommandString:
          'mv ' , srcNode printString , childNode name , ' ' , destNode printString
            , newName.
      compareBlock value: childNode value: mvNode value: #'~='.
      node := self topez lookup: destNode printString , newName.
      compareBlock value: childNode value: node value: #'~='.
      compareBlock value: mvNode value: node value: #'='.
      noSrcChild := false.
      srcNode childNamed: childNode name ifAbsent: [ noSrcChild := true ].
      self assert: noSrcChild ]