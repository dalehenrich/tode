tests
testRsyncModifyWindowIgnored
  | tmpNode nodePath srcNode destNode srcModificationTime nodes newest newestModificationTime oldestModificationTime |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  newestModificationTime := DateAndTime now + (Duration minutes: 6).
  oldestModificationTime := newestModificationTime - (Duration minutes: 10).
  srcModificationTime := newestModificationTime - (Duration minutes: 6).
  nodes := self differentLeafNodes.
  newest := nodes atRandom.	"pick one of the nodes to be newer and therefore WILL be UPDATED ... the other mod times are within 5 minutes or each other and therefor will be treated as the same ... except that this time, the sizes are different and the files will be copied anyway"
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
          'ston rsync --modify-window=300 ' , srcNode printString , childNode name , ' '
            , destNode printString
        redirectTarget: nil.
      command hasSubCommand: true.
      stonTool := topez toolInstanceFor: 'ston'.
      stonTool todeCommand: command.
      rsync := stonTool stonrsync.
      newest name = childNode name
        ifTrue: [ 
          "newest file should have been copied, so new timestamp will be within a minute of the srcModification time --- but not identical"
          self
            verifyNode: '/tmp/tests/ston/dest/' , childNode name
            modificationTimeLessThan: srcModificationTime
            by: (Duration minutes: 1) ]
        ifFalse: [ 
          "older files should have been copied because of size, so new timestamp will be within a minute of the srcModification time --- but not identical"
          self
            verifyNode: '/tmp/tests/ston/dest/' , childNode name
            modificationTimeLessThan: srcModificationTime
            by: (Duration minutes: 1) ] ]