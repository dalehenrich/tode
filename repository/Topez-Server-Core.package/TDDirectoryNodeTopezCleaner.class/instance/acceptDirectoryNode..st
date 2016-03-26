visitor-double dispatching
acceptDirectoryNode: aTDDirectoryNode
  super acceptDirectoryNode: aTDDirectoryNode.
  aTDDirectoryNode topez ifNotNil: [ dNodes add: aTDDirectoryNode ]