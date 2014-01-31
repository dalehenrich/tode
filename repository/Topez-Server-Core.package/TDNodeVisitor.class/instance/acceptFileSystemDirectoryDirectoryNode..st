visitor-double dispatching
acceptFileSystemDirectoryDirectoryNode: aTDFileSystemDirectoryDirectoryNode
  aTDFileSystemDirectoryDirectoryNode
    childrenDo: [ :child | 
      child topez: self topez.
      self visitNode: child ]