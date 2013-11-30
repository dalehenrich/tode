as yet unclassified
fileSystemProxy: aTDFileSystemLeafNode
  | node |
  node := aTDFileSystemLeafNode asTDLeafNode.
  ^ node isLeaf
    ifTrue: [ self fileSystemLeafNodeProxy: aTDFileSystemLeafNode ]
    ifFalse: [ 
      "implication is that changes to the directory structure etc. won't be 
	    saved to disk ... but this is not the primary use case ... if it needs 
	    to be supported, it's just a matter of hard work"
      node ]