tests
testDirectoryNodeMvOverSelf
  | srcNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  self
    should: [ 
      self
        evaluateCommandString:
          'mv ' , srcNode printString , ' ' , srcNode printString ]
    raise: Error