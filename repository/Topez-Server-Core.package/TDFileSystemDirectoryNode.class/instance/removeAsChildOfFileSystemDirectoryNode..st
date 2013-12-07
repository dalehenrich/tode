as yet unclassified
removeAsChildOfFileSystemDirectoryNode: aTDFileSystemDirectoryNode
  self parent == aTDFileSystemDirectoryNode
    ifFalse: [ 
      self
        error:
          self name printString , ' is not my child ('
            , aTDFileSystemDirectoryNode name printString , ').' ].
  (aTDFileSystemDirectoryNode fileDirectory directoryNamed: self name)
    recursiveDelete.
  ^ self