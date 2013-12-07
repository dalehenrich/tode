as yet unclassified
addChildLeafNode: aNode
  self fileDirectory
    forceNewFileNamed: aNode name , self stonFileExtension
    do: [ :fileStream | STONWriter plainTextNewlinesDuring: [ STON put: aNode onStream: fileStream ] ].
  ^ self _childNodeFor: aNode name , self stonFileExtension