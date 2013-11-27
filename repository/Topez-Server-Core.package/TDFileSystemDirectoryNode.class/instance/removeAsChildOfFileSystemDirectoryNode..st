as yet unclassified
removeAsChildOfFileSystemDirectoryNode: aTDFileSystemDirectoryNode
  aTDFileSystemDirectoryNode parent == self
    ifFalse: [ self error: aTDFileSystemDirectoryNode name , ' is not my child.' ].
  (self fileDirectory directoryNamed: aTDFileSystemDirectoryNode name)
    recursiveDelete.
  ^ aTDFileSystemDirectoryNode