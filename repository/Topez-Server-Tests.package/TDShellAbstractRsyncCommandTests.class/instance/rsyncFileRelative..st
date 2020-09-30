tests
rsyncFileRelative: relativeOptionSet
  | rootPath childNode srcNode destNode rsync optionString destRelativePath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'foo'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  topez setCurrentNode: srcNode parent.
  srcNode := srcNode addChild: 'bar'.
  srcNode := srcNode addChild: 'src'.
  relativeOptionSet
    ifTrue: [ 
      destRelativePath := 'foo/bar/src/'.
      optionString := '--relative' ]
    ifFalse: [ destRelativePath := optionString := '' ].
  self standardLeafNodes
    do: [ :childNode | 
      childNode
        modificationTime:
          (self roundedDateAndTime: childNode modificationTime - (Duration seconds: 5)).
      srcNode addChildNode: childNode.
      rsync := self
        runRsyncCommandLine:
          'rsync ' , optionString , ' foo/bar/src/' , childNode name , ' '
            , destNode printString.
      self
        validate: rootPath , 'foo/bar/src/' , childNode name
        equals: rootPath , 'dest/' , destRelativePath , childNode name
        with: rsync.
      self
        validateModificationTimes: rootPath , 'foo/bar/src/' , childNode name
        between: rootPath , 'dest/' , destRelativePath , childNode name
        match: false ]