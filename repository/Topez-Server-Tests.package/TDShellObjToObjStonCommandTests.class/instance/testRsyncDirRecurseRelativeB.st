tests
testRsyncDirRecurseRelativeB
  | stonTool command childNode tmpNode nodePath srcNode destNode rsync shellTool |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  topez setCurrentNode: tmpNode.
  srcNode := tmpNode addChild: 'foo'.
  srcNode := srcNode addChild: 'bar'.
  srcNode := srcNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      childNode modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      command := TDCommandLine
        commandLine:
          'ston rsync --recursive --relative /tmp/tests/ston/foo/bar/src '
            , destNode printString
        redirectTarget: nil.
      command hasSubCommand: true.
      stonTool := topez toolInstanceFor: 'ston'.
      stonTool todeCommand: command.
      rsync := stonTool stonrsync.
      self
        validate: '/tmp/tests/ston/foo/bar/src/' , childNode name
        equals:
          '/tmp/tests/ston/dest/tmp/tests/ston/foo/bar/src/' , childNode name
        with: rsync.
      self
        validateModificationTimes:
          '/tmp/tests/ston/foo/bar/src/' , childNode name
        between:
          '/tmp/tests/ston/dest/tmp/tests/ston/foo/bar/src/' , childNode name
        match: false ]