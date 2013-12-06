as yet unclassified
removeAsChildOfFileSystemDirectoryNode: aTDFileSystemDirectoryNode
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      self parent ifNil: [ self parent: aTDFileSystemDirectoryNode ].
      aTDFileSystemDirectoryNode removeChildFileSystemLeafNode: self ]
    ifFalse: [ aTDFileSystemDirectoryNode removeChildFileSystemLeafNode: self ]