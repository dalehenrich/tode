visitor-double dispatching
acceptDirectoryNode: aTDDirectoryNode
  aTDDirectoryNode
    childrenDo: [ :child | 
      child topez: self topez.
      self visitNode: child ]