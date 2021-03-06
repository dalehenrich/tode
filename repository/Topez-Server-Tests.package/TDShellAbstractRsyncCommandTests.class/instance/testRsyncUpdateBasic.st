tests
testRsyncUpdateBasic
  | childNode srcNode destNode rsync rootPath destModificationTime srcModificationTime |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  destModificationTime := self
    roundedDateAndTime: DateAndTime now + (Duration days: 5).
  srcModificationTime := self
    roundedDateAndTime: DateAndTime now - (Duration days: 5).
  self standardLeafNodes
    do: [ :childNode | 
      "pack destNode with nodes with newer timestamps"
      childNode modificationTime: destModificationTime.
      destNode addChildNode: childNode.
      self
        validateNode: rootPath , 'dest/' , childNode name
        modificationTime: destModificationTime ].
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
      self
        validateNode: rootPath , 'dest/' , childNode name
        modificationTime: destModificationTime ]