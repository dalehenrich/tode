as yet unclassified
addAsChildOfFileSystemDirectoryNode: aTDFileSystemDirectoryNode
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ 
      self asTDLeafNode
        addAsChildOfFileSystemDirectoryNode: aTDFileSystemDirectoryNode ]
        on: STONReaderError
        do: [ :ex | aTDFileSystemDirectoryNode addChildFileSystemLeafNode: self ] ]
    ifFalse: [ aTDFileSystemDirectoryNode addChildFileSystemLeafNode: self ]