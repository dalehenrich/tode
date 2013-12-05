tests
testRsyncSizeOnly
  | childNode srcNode destNode rsync rootPath srcModificationTime oldestModificationTime changedSize |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  oldestModificationTime := (DateAndTime now + (Duration minutes: 6)) beRounded.
  srcModificationTime := oldestModificationTime - (Duration minutes: 6).
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: oldestModificationTime.
      destNode addChildNode: childNode.
      self
        validateNode: rootPath , 'dest/' , childNode name
        modificationTime: oldestModificationTime ].
  changedSize := self differentLeafNodes atRandom.	"pick one of the nodes to have it's size changed ... should be the only one that gets transferred"
  changedSize modificationTime: oldestModificationTime.
  destNode addChildNode: changedSize.
  self standardLeafNodes
    do: [ :childNode | 
      "pack destNode with nodes with older timestamps"
      childNode modificationTime: srcModificationTime.
      srcNode addChildNode: childNode.
      self
        validateNode: rootPath , 'src/' , childNode name
        modificationTime: srcModificationTime.
      rsync := self
        runStonCommandLine:
          'ston rsync --size-only ' , srcNode printString , childNode name , ' '
            , destNode printString.
      changedSize name = childNode name
        ifTrue: [ 
          "this one transferred, so time stamp within a minute"
          self
            verifyNode: rootPath , 'dest/' , childNode name
            modificationTimeLessThan: oldestModificationTime
            by: (Duration minutes: 7) ]
        ifFalse: [ 
          self
            validateNode: rootPath , 'dest/' , childNode name
            modificationTime: oldestModificationTime ] ]