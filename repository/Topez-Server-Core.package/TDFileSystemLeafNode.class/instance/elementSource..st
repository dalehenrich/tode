source element builder
elementSource: anObject
  | filename fileContents |
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      | aNode |
      aNode := self asTDLeafNode elementSource: anObject.
      filename := aNode name , self stonFileExtension.
      fileContents := STON toString: aNode ]
    ifFalse: [ 
      filename := self name.
      fileContents := anObject ].
  self fileDirectory
    forceNewFileNamed: filename
    do: [ :fileStream | fileStream nextPutAll: fileContents ]