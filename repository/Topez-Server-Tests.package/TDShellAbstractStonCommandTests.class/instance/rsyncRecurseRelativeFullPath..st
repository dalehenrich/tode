tests
rsyncRecurseRelativeFullPath: dirContents
  | rootPath tmpSrcNode tmpDestNode childNode srcNode destNode rsync trailingSlash |
  rootPath := self rootNodePath.
  tmpSrcNode := self lookupSrcNode: rootPath.
  tmpDestNode := self lookupDestNode: rootPath.
  srcNode := tmpSrcNode addChild: 'foo'.
  srcNode := srcNode addChild: 'bar'.
  srcNode := srcNode addChild: 'src'.
  destNode := tmpDestNode addChild: 'dest'.
  trailingSlash := dirContents
    ifTrue: [ '/' ]
    ifFalse: [ '' ].
  topez setCurrentNode: tmpSrcNode.
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      rsync := self
        runStonCommandLine:
          'ston rsync --recursive --relative ' , rootPath , 'foo/bar/src' , trailingSlash
            , ' ' , destNode printString.
      self
        validate: rootPath , 'foo/bar/src/' , childNode name
        equals: rootPath , 'dest' , rootPath , 'foo/bar/src/' , childNode name
        with: rsync.
      self
        validateModificationTimes: rootPath , 'foo/bar/src/' , childNode name
        between: rootPath , 'dest' , rootPath , 'foo/bar/src/' , childNode name
        match: false ]