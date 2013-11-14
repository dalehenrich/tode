tests
testRsyncUpdateSpecific
  | tmpNode nodePath srcNode destNode srcModificationTime nodes newest newestModificationTime oldestModificationTime |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  newestModificationTime := DateAndTime now + (Duration days: 5).
  oldestModificationTime := DateAndTime now - (Duration days: 10).
  srcModificationTime := DateAndTime now - (Duration days: 5).
  nodes := self differentLeafNodes.
  newest := nodes atRandom.	"pick one of the nodes to be newer and therefore WILL NOT be UPDATED"
  nodes
    do: [ :childNode | 
      newest == childNode
        ifTrue: [ childNode modificationTime: newestModificationTime ]
        ifFalse: [ childNode modificationTime: oldestModificationTime ].
      destNode addChildNode: childNode ].
  self
    validateNode: '/tmp/tests/ston/dest/' , newest name
    modificationTime: newestModificationTime.
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
          'ston rsync --update ' , srcNode printString , childNode name , ' '
            , destNode printString
        redirectTarget: nil.
      command hasSubCommand: true.
      stonTool := topez toolInstanceFor: 'ston'.
      stonTool todeCommand: command.
      rsync := stonTool stonrsync.
      newest name = childNode name
        ifTrue: [ 
          "newest file should have been preserved ... newest modification time"
          self
            validateNode: '/tmp/tests/ston/dest/' , childNode name
            modificationTime: newestModificationTime ]
        ifFalse: [ 
          "older files should equal the src nodes"
          self
            validate: '/tmp/tests/ston/src/' , childNode name
            equals: '/tmp/tests/ston/dest/' , childNode name
            with: rsync.	"and have their timestamps changed"
          self
            verifyNode: '/tmp/tests/ston/dest/' , childNode name
            modificationTimeGreaterThan: oldestModificationTime
            by: (Duration days: 5) ] ]