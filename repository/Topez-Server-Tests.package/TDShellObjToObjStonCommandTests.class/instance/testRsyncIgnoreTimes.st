tests
testRsyncIgnoreTimes
  | tmpNode nodePath srcNode destNode srcModificationTime |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  srcModificationTime := (DateAndTime now - (Duration days: 5)) beRounded.
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: srcModificationTime.
      destNode addChildNode: childNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | rsync stonTool command |
      childNode modificationTime: srcModificationTime.
      srcNode addChildNode: childNode.
      self
        validateNode: '/tmp/tests/ston/src/' , childNode name
        modificationTime: srcModificationTime.
      command := TDCommandLine
        commandLine:
          'ston rsync --ignore-times ' , srcNode printString , childNode name , ' '
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
        verifyNode: '/tmp/tests/ston/dest/' , childNode name
        modificationTimeGreaterThan: srcModificationTime
        by: (Duration days: 3) ]