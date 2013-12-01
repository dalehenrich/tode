tests
testRsyncSizeOnly
  | tmpNode nodePath srcNode destNode srcModificationTime nodes oldestModificationTime changedSize |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  oldestModificationTime := DateAndTime now + (Duration minutes: 6).
  srcModificationTime := oldestModificationTime - (Duration minutes: 6).
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: oldestModificationTime.
      destNode addChildNode: childNode ].
  changedSize := self differentLeafNodes atRandom.	"pick one of the nodes to have it's size changed ... should be the only one that gets transferred"
  changedSize modificationTime: oldestModificationTime.
  destNode addChildNode: changedSize.
  self standardLeafNodes
    do: [ :childNode | 
      | rsync stonTool command |
      "pack destNode with nodes with older timestamps"
      childNode modificationTime: srcModificationTime.
      srcNode addChildNode: childNode.
      self
        validateNode: '/tmp/tests/ston/src/' , childNode name
        modificationTime: srcModificationTime.
      command := TDCommandLine
        commandLine:
          'ston rsync --size-only ' , srcNode printString , childNode name , ' '
            , destNode printString
        redirectTarget: nil.
      command hasSubCommand: true.
      stonTool := topez toolInstanceFor: 'ston'.
      stonTool todeCommand: command.
      rsync := stonTool stonrsync.	"nothing is transferred"
      changedSize name = childNode name
        ifTrue: [ 
          "this one transferred, so time stamp within a minute"
          self
            verifyNode: '/tmp/tests/ston/dest/' , childNode name
            modificationTimeLessThan: oldestModificationTime
            by: (Duration minutes: 7) ]
        ifFalse: [ 
          self
            validateNode: '/tmp/tests/ston/dest/' , childNode name
            modificationTime: oldestModificationTime ] ]