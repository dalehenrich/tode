tests
testRsyncDirNoRecurse
  | stonTool command childNode tmpNode nodePath srcNode destNode rsync |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      | srcPath |
      childNode
        modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      srcPath := srcNode printString.
      srcPath := srcPath copyFrom: 1 to: srcPath size - 1.	"remove trailing /"
      command := TDCommandLine
        commandLine: 'ston rsync ' , srcPath , ' ' , destNode printString
        redirectTarget: nil.
      command hasSubCommand: true.
      stonTool := topez toolInstanceFor: 'ston'.
      stonTool todeCommand: command.
      rsync := stonTool stonrsync.
      self
        should: [ self topez lookup: '/tmp/tests/ston/dest/' , childNode name ]
        raise: Error ]