tests
testRsyncExisting
  | childNode srcNode destNode rsync rootPath srcModificationTime destModificationTime existingNodeNames |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  srcModificationTime := (DateAndTime now - (Duration seconds: 5)) beRounded.
  destModificationTime := (DateAndTime now - (Duration seconds: 10)) beRounded.
  self smallSetLeafNodes
    do: [ :childNode | 
      "pack destNode with nodes with older timestamps"
      childNode modificationTime: destModificationTime.
      destNode addChildNode: childNode.
      self
        validateNode: rootPath , 'dest/' , childNode name
        modificationTime: destModificationTime ].
  existingNodeNames := self smallSetLeafNodes collect: [ :each | each name ].
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: srcModificationTime.
      srcNode addChildNode: childNode.
      rsync := self
        runStonCommandLine:
          'ston rsync --existing ' , srcNode printString , childNode name , ' '
            , destNode printString.
      (existingNodeNames includes: childNode name)
        ifTrue: [ 
          self
            validate: rootPath , 'src/' , childNode name
            equals: rootPath , 'dest/' , childNode name
            with: rsync ]
        ifFalse: [ 
          | missing |
          missing := false.
          self topez
            lookup: rootPath , 'dest/' , childNode name
            ifAbsent: [ missing := true ].
          self assert: missing ] ]