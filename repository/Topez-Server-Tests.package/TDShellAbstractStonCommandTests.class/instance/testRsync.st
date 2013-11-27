tests
testRsync
  | stonTool command childNode tmpNode srcNode destNode rsync |
  tmpNode := self lookupNode: self rootNodePath.
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
        validate: '/tmp/tests/ston/src/' , childNode name
        equals: '/tmp/tests/ston/dest/' , childNode name
        with: rsync.
      self
        validateModificationTimes: '/tmp/tests/ston/src/' , childNode name
        between: '/tmp/tests/ston/dest/' , childNode name
        match: false ]