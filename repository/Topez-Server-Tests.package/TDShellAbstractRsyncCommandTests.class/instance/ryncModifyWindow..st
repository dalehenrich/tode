tests
ryncModifyWindow: windowTestMode
  | childNode srcNode destNode rsync rootPath newestModificationTime oldestModificationTime srcModificationTime nodes newest |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  newestModificationTime := self
    roundedDateAndTime: DateAndTime now + (Duration minutes: 6).
  oldestModificationTime := newestModificationTime - (Duration minutes: 10).
  srcModificationTime := newestModificationTime - (Duration minutes: 6).
  nodes := windowTestMode == #'differentSizes'
    ifTrue: [ 
      " the sizes are different and the files will be copied anyway"
      self differentLeafNodes ]
    ifFalse: [ 
      "the other mod times are within 5 minutes of each other and therefore will be treated as the same"
      self standardLeafNodes ].
  newest := nodes atRandom.	"pick one of the nodes to be newer and therefore WILL be UPDATED "
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
          'rsync --modify-window=300 ' , srcNode printString , childNode name , ' '
            , destNode printString.
      newest name = childNode name
        ifTrue: [ 
          "newest file should have been copied, so new timestamp will be within a minute of the srcModification time --- but not identical"
          self
            verifyNode: rootPath , 'dest/' , childNode name
            modificationTimeLessThan: srcModificationTime
            by: (Duration minutes: 1) ]
        ifFalse: [ 
          nodes := windowTestMode == #'differentSizes'
            ifTrue: [ 
              "older files should have been copied because of size, so new timestamp will be within a minute of the srcModification time --- but not identical"
              self
                verifyNode: rootPath , 'dest/' , childNode name
                modificationTimeLessThan: srcModificationTime
                by: (Duration minutes: 1) ]
            ifFalse: [ 
              "older files should have the timestamps unchanged"
              self
                validateNode: rootPath , 'dest/' , childNode name
                modificationTime: oldestModificationTime ] ] ]