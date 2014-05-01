tests
testDirectoryNodeMvSelfToDot
  | srcNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  self
    should: [ 
      self
        evaluateCommandString:
          'cd ' , srcNode printString , '; mv ' , srcNode printString , ' .' ]
    raise: Error