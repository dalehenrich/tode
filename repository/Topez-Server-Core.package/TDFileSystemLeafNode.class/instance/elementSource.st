source element builder
elementSource
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode elementSource ]
    ifFalse: [ self fileContents ]