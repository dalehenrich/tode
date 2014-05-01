tests
testDirectoryNodeMv
  | srcNode destNode rootPath copyDirNode compareBlock parentNode noSrcNode srcParentNode originalNodes |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  srcParentNode := srcNode parent.
  destNode := self lookupDestNode: rootPath , 'dest'.
  originalNodes := self standardLeafNodes
    collect: [ :childNode | srcNode addChildNode: childNode ].
  copyDirNode := self
    evaluateCommandString:
      'mv ' , srcNode printString , ' ' , destNode printString.
  compareBlock := [ :aNode :bNode | 
  self assert: bNode contents = aNode contents.
  self assert: bNode name = aNode name ].
  parentNode := self topez lookup: destNode printString , 'src/'.
  originalNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez lookup: parentNode printString , childNode name.
      compareBlock value: childNode value: copyNode ].
  noSrcNode := false.
  srcParentNode childNamed: srcNode name ifAbsent: [ noSrcNode := true ].
  self assert: noSrcNode