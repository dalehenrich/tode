tests
testRsyncIgnoreTimes
  | childNode srcNode destNode rsync rootPath srcModificationTime |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  srcModificationTime := (DateAndTime now - (Duration days: 5)) beRounded.
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: srcModificationTime.
      destNode addChildNode: childNode ].
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: srcModificationTime.
      srcNode addChildNode: childNode.
      self
        validateNode: rootPath , 'src/' , childNode name
        modificationTime: srcModificationTime.
      rsync := self
        runRsyncCommandLine:
          'rsync --ignore-times ' , srcNode printString , childNode name , ' '
            , destNode printString.
      self
        validate: rootPath , 'src/' , childNode name
        equals: rootPath , 'dest/' , childNode name
        with: rsync.
      self
        verifyNode: rootPath , 'dest/' , childNode name
        modificationTimeGreaterThan: srcModificationTime
        by: (Duration days: 3) ]