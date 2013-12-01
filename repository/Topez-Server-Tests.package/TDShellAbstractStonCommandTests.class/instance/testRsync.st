tests
testRsync
  | stonTool command childNode tmpSrcNode tmpDestNode srcNode destNode rsync rootPath |
  rootPath := self rootNodePath.
  tmpSrcNode := self lookupSrcNode: rootPath.
  tmpDestNode := self lookupDestNode: rootPath.
  srcNode := tmpSrcNode addChild: 'src'.
  destNode := tmpDestNode addChild: 'dest'.
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
        validate: rootPath , 'src/' , childNode name
        equals: rootPath , 'dest/' , childNode name
        with: rsync.
      self
        validateModificationTimes: rootPath , 'src/' , childNode name
        between: rootPath , 'dest/' , childNode name
        match: false ]