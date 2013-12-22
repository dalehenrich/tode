tests
testDirectoryNodeCpSelfToDot
  | srcNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  self
    should: [ 
      self topez
        evaluateCommandString:
          'cd ' , srcNode printString , '; cp ' , srcNode printString , ' .' ]
    raise: Error