tests
testDirectoryNodeCpNewName
  | srcNode destNode rootPath compareBlock parentNode newName |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  newName := 'src_NEW'.
  self standardLeafNodes do: [ :childNode | srcNode addChildNode: childNode ].
  self
    evaluateCommandString:
      'cp ' , srcNode printString , ' ' , destNode printString , newName.
  compareBlock := [ :aNode :bNode | 
  self assert: bNode contents = aNode contents.
  self assert: bNode name = aNode name ].
  parentNode := self topez lookup: destNode printString , newName.
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez lookup: parentNode printString , childNode name.
      compareBlock value: childNode value: copyNode ]