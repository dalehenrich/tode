private
saveContents: anObject asElementSource: asElementSource
  | filename fileContents |
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      | aNode |
      aNode := self asTDLeafNode.
      asElementSource
        ifTrue: [ aNode elementSource: anObject ]
        ifFalse: [ aNode contents: anObject ].
      filename := aNode name , self stonFileExtension.
      fileContents := STON toString: aNode ]
    ifFalse: [ 
      filename := self name.
      fileContents := anObject ].
  self fileDirectory
    forceNewFileNamed: filename
    do: [ :fileStream | fileStream nextPutAll: fileContents ]