tests
testRsyncUpdateBasic
  | tmpNode nodePath srcNode destNode destModificationTime srcModificationTime |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  destModificationTime := (DateAndTime now + (Duration days: 5)) beRounded.
  srcModificationTime := (DateAndTime now - (Duration days: 5)) beRounded.
  self standardLeafNodes
    do: [ :childNode | 
      "pack destNode with nodes with newer timestamps"
      childNode modificationTime: destModificationTime.
      destNode addChildNode: childNode.
      self
        validateNode: '/tmp/tests/ston/dest/' , childNode name
        modificationTime: destModificationTime ].
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
      self
        validateNode: '/tmp/tests/ston/dest/' , childNode name
        modificationTime: destModificationTime ]