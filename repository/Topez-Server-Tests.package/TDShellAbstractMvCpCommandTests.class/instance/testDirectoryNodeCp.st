tests
testDirectoryNodeCp
  | srcNode destNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  self standardLeafNodes do: [ :childNode | srcNode addChildNode: childNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | copyNode |
      copyNode := self topez
        evaluateCommandString:
          'cp ' , srcNode printString , ' ' , destNode printString ]