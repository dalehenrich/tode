as yet unclassified
removeChildFileSystemLeafNode: aTDFileSystemLeafNode
  aTDFileSystemLeafNode parent == self
    ifFalse: [ self error: aTDFileSystemLeafNode name , ' is not my child.' ].
  self fileDirectory deleteFileNamed: aTDFileSystemLeafNode name.
  ^ aTDFileSystemLeafNode