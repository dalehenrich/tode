tests
testRsyncUpdateSpecific
  | childNode srcNode destNode rsync rootPath newestModificationTime oldestModificationTime srcModificationTime nodes newest |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  newestModificationTime := self
    roundedDateAndTime: DateAndTime now + (Duration days: 5).
  oldestModificationTime := self
    roundedDateAndTime: DateAndTime now - (Duration days: 10).
  srcModificationTime := self
    roundedDateAndTime: DateAndTime now - (Duration days: 5).
  nodes := self differentLeafNodes.
  newest := nodes atRandom.	"pick one of the nodes to be newer and therefore WILL NOT be UPDATED"
  nodes
    do: [ :childNode | 
      newest == childNode
        ifTrue: [ childNode modificationTime: newestModificationTime ]
        ifFalse: [ childNode modificationTime: oldestModificationTime ].
      destNode addChildNode: childNode ].
  self
    validateNode: rootPath , 'dest/' , newest name
    modificationTime: newestModificationTime.
  self standardLeafNodes
    do: [ :childNode | 
      "pack destNode with nodes with older timestamps"
      childNode modificationTime: srcModificationTime.
      srcNode addChildNode: childNode.
      self
        validateNode: rootPath , 'src/' , childNode name
        modificationTime: srcModificationTime.
      rsync := self
        runRsyncCommandLine:
          'rsync --update ' , srcNode printString , childNode name , ' '
            , destNode printString.
      newest name = childNode name
        ifTrue: [ 
          "newest file should have been preserved ... newest modification time"
          self
            validateNode: rootPath , 'dest/' , childNode name
            modificationTime: newestModificationTime ]
        ifFalse: [ 
          "older files should equal the src nodes"
          self
            validate: rootPath , 'src/' , childNode name
            equals: rootPath , 'dest/' , childNode name
            with: rsync.	"and have their timestamps changed"
          self
            verifyNode: rootPath , 'dest/' , childNode name
            modificationTimeGreaterThan: oldestModificationTime
            by: (Duration days: 5) ] ]