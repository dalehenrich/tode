private
saveContents: anObject asElementSource: asElementSource
  | filename fileContents |
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ 
      | aNode |
      aNode := self asTDLeafNode.
      asElementSource
        ifTrue: [ aNode elementSource: anObject ]
        ifFalse: [ aNode contents: anObject ].
      filename := aNode name , self stonFileExtension.
      STONWriter
        plainTextNewlinesDuring: [ fileContents := self objectSerializer toString: aNode ] ]
        on: STONReaderError
        do: [ :ex | 
          filename := self name.
          fileContents := anObject withGemstoneLineEndings ] ]
    ifFalse: [ 
      filename := self name.
      fileContents := anObject withGemstoneLineEndings ].
  self fileDirectory
    forceNewFileNamed: filename
    do: [ :fileStream | fileStream nextPutAll: fileContents ]