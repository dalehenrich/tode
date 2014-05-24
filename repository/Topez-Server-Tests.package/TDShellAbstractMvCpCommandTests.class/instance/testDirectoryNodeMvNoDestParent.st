tests
testDirectoryNodeMvNoDestParent
  | srcNode destNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  self
    should: [ 
      self
        evaluateCommandString:
          'mv ' , srcNode printString , ' ' , destNode printString , 'xxx/yyy' ]
    raise: Error