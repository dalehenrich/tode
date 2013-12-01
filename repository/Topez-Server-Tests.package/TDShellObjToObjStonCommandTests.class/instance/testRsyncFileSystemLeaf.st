tests
testRsyncFileSystemLeaf
  | stonTool command childNode tmpNode srcNode destNode rsync rootPath |
  self
    halt: 'The test needs to rsynch a file system leaf node (plain text file)'.
  rootPath := self rootNodePath.
  tmpNode := self lookupNode: rootPath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      command := TDCommandLine
        commandLine:
          'ston rsync ' , srcNode printString , childNode name , ' '
            , destNode printString
        redirectTarget: nil.
      command hasSubCommand: true.
      stonTool := topez toolInstanceFor: 'ston'.
      stonTool todeCommand: command.
      rsync := stonTool stonrsync.
      self
        validate: rootPath , '/src/' , childNode name
        equals: rootPath , '/dest/' , childNode name
        with: rsync.
      self
        validateModificationTimes: rootPath , '/src/' , childNode name
        between: rootPath , '/dest/' , childNode name
        match: false ]