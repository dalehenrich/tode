as yet unclassified
addChildFileSystemLeafNode: aNode
  "don't transfer big files this way:)"

  aNode parent fileDirectory
    readOnlyFileNamed: aNode name
    do: [ :sourceStream | 
      self fileDirectory
        forceNewFileNamed: aNode name
        do: [ :fileStream | fileStream nextPutAll: sourceStream contents ] ].
  ^ self _childNodeFor: aNode name