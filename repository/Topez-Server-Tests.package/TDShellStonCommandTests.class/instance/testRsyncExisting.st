tests
testRsyncExisting
  | stonTool command childNode tmpNode nodePath srcNode destNode rsync srcModificationTime destModificationTime existingNodeNames |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  srcModificationTime := DateAndTime now - (Duration seconds: 5).
  destModificationTime := DateAndTime now - (Duration seconds: 10).
  self smallSetLeafNodes
    do: [ :childNode | 
      "pack destNode with nodes with older timestamps"
      childNode modificationTime: destModificationTime.
      destNode addChildNode: childNode.
      self
        validateNode: '/tmp/tests/ston/dest/' , childNode name
        modificationTime: destModificationTime ].
  existingNodeNames := self smallSetLeafNodes collect: [ :each | each name ].
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: srcModificationTime.
      srcNode addChildNode: childNode.
      command := TDCommandLine
        commandLine:
          'ston rsync --existing ' , srcNode printString , childNode name , ' '
            , destNode printString
        redirectTarget: nil.
      command hasSubCommand: true.
      stonTool := topez toolInstanceFor: 'ston'.
      stonTool todeCommand: command.
      rsync := stonTool stonrsync.
      (existingNodeNames includes: childNode name)
        ifTrue: [ 
          self
            validate: '/tmp/tests/ston/src/' , childNode name
            equals: '/tmp/tests/ston/dest/' , childNode name
            with: rsync ]
        ifFalse: [ 
          | missing |
          missing := false.
          self topez
            lookup: '/tmp/tests/ston/dest/' , childNode name
            ifAbsent: [ missing := true ].
          self assert: missing ] ]