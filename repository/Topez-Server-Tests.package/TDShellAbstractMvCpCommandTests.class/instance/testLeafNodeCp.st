tests
testLeafNodeCp
  | srcNode destNode rootPath compareBlock |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  compareBlock := [ :aNode :bNode | 
  self assert: bNode contents = aNode contents.
  self assert: bNode name = aNode name ].
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode node |
      srcNode addChildNode: childNode.
      copyNode := self topez
        evaluateCommandString:
          'cp ' , srcNode printString , childNode name , ' ' , destNode printString.
      compareBlock value: childNode value: copyNode.
      node := self topez lookup: destNode printString , childNode name.
      compareBlock value: childNode value: node.
      compareBlock value: copyNode value: node ]