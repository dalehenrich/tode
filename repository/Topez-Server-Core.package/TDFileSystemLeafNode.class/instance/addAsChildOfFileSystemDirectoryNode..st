as yet unclassified
addAsChildOfFileSystemDirectoryNode: aTDFileSystemDirectoryNode
  self parent: aTDFileSystemDirectoryNode.
  ^ aTDFileSystemDirectoryNode addChildFileSystemLeafNode: self