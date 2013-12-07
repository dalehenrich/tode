as yet unclassified
fileSystemProxy: aTDFileSystemLeafNode
  | node |
  node := aTDFileSystemLeafNode asTDLeafNode.	"wrap all nodes with a proxy"
  ^ self fileSystemLeafNodeProxy: aTDFileSystemLeafNode