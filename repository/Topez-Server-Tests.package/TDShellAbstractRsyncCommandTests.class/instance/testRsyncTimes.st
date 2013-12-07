tests
testRsyncTimes
  | childNode srcNode destNode rsync rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      childNode
        modificationTime:
          (childNode modificationTime - (Duration seconds: 5)) beRounded.
      srcNode addChildNode: childNode.
      rsync := self
        runRsyncCommandLine:
          'rsync --times ' , srcNode printString , childNode name , ' '
            , destNode printString.
      self
        validate: rootPath , 'src/' , childNode name
        equals: rootPath , 'dest/' , childNode name
        with: rsync.
      self
        validateModificationTimes: rootPath , 'src/' , childNode name
        between: rootPath , 'dest/' , childNode name
        match: true ]