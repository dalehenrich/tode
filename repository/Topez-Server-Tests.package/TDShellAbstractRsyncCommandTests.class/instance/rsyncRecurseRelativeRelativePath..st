tests
rsyncRecurseRelativeRelativePath: dirContents
  | rootPath childNode srcNode destNode rsync trailingSlash |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'foo'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  topez setCurrentNode: srcNode parent.
  srcNode := srcNode addChild: 'bar'.
  srcNode := srcNode addChild: 'src'.
  trailingSlash := dirContents
    ifTrue: [ '/' ]
    ifFalse: [ '' ].
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      rsync := self
        runRsyncCommandLine:
          'rsync --recursive --relative foo/bar/src' , trailingSlash , ' '
            , destNode printString.
      self
        validate: rootPath , 'foo/bar/src/' , childNode name
        equals: rootPath , 'dest/foo/bar/src/' , childNode name
        with: rsync.
      self
        validateModificationTimes: rootPath , 'foo/bar/src/' , childNode name
        between: rootPath , 'dest/foo/bar/src/' , childNode name
        match: false ]