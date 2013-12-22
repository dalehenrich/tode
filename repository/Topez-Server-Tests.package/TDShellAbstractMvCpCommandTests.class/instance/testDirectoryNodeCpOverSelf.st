tests
testDirectoryNodeCpOverSelf
  | srcNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  self
    should: [ 
      self topez
        evaluateCommandString:
          'cp ' , srcNode printString , ' ' , srcNode printString ]
    raise: Error