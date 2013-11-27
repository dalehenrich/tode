as yet unclassified
addChildLeafNode: aNode
  self fileDirectory
    forceNewFileNamed: aNode name
    do: [ :fileStream | STON put: aNode onStream: fileStream ].
  ^ self _childNodeFor: aNode name