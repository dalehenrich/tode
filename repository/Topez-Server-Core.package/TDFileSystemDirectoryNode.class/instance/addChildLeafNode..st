as yet unclassified
addChildLeafNode: aNode
  self fileDirectory
    forceNewFileNamed: aNode name , self stonFileExtension
    do: [ :fileStream | 
      STONWriter
        plainTextNewlinesDuring: [ fileStream nextPutAll: (self objectSerializer toString: aNode) ] ].
  ^ self _childNodeFor: aNode name , self stonFileExtension