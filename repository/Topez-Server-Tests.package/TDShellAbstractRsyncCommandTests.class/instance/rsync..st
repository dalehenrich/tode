tests
rsync: dirContents
  | childNode srcNode destNode rsync rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      | childNameString |
      childNode
        modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      childNameString := dirContents
        ifTrue: [ '' ]
        ifFalse: [ childNode name ].
      rsync := self
        runRsyncCommandLine:
          'rsync ' , srcNode printString , childNameString , ' ' , destNode printString.
      self
        validate: rootPath , 'src/' , childNode name
        equals: rootPath , 'dest/' , childNode name
        with: rsync.
      self
        validateModificationTimes: rootPath , 'src/' , childNode name
        between: rootPath , 'dest/' , childNode name
        match: false ]