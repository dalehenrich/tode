visitor-double dispatching
acceptDirectoryNode: aTDDirectoryNode
  aTDDirectoryNode childrenDo: [ :child | self visitNode: child ].
  aTDDirectoryNode topez ifNotNil: [ dNodes add: aTDDirectoryNode ]