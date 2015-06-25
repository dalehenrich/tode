as yet unclassified
addChildLeafNode: aNode
  self fileDirectory
    forceNewFileNamed: aNode name , self stonFileExtension
    do: [ :fileStream | 
      STONWriter
        plainTextNewlinesDuring: [ fileStream nextPutAll: (STON toUTF8EncodedString: aNode) ] ].
  ^ self _childNodeFor: aNode name , self stonFileExtension