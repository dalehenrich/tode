tests
testLeafNodeCp
  | srcNode destNode rootPath compareBlock |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  compareBlock := [ :aNode :bNode :operator | 
  self assert: (bNode perform: operator with: aNode).
  self assert: bNode contents = aNode contents.
  self assert: bNode name = aNode name.
  self assert: bNode parent == destNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode node |
      srcNode addChildNode: childNode.
      copyNode := self topez
        evaluateCommandString:
          'cp ' , srcNode printString , childNode name , ' ' , destNode printString.
      compareBlock value: childNode value: copyNode value: #'~~'.
      node := self lookupDestNode: destNode printString , childNode name.
      compareBlock value: childNode value: node value: #'~~'.
      compareBlock value: copyNode value: node value: #'==' ]