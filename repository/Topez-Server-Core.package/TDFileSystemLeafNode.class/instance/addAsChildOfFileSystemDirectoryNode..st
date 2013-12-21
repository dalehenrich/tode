as yet unclassified
addAsChildOfFileSystemDirectoryNode: aTDFileSystemDirectoryNode
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      self asTDLeafNode
        addAsChildOfFileSystemDirectoryNode: aTDFileSystemDirectoryNode ]
    ifFalse: [ aTDFileSystemDirectoryNode addChildFileSystemLeafNode: self ]