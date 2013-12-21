accessing
name: aString
  ((aString endsWith: self stonFileExtension) or: [ self name isNil ])
    ifTrue: [ ^ super name: aString ].
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      | aNode |
      aNode := self asTDLeafNode name: aString.
      super name: aString , self stonFileExtension.
      self fileDirectory
        forceNewFileNamed: aNode name , self stonFileExtension
        do: [ :fileStream | STONWriter plainTextNewlinesDuring: [ STON put: aNode onStream: fileStream ] ] ]
    ifFalse: [ super name: aString ]