accessing
listContents: limit
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode listContents: limit ]
    ifFalse: [ super listContents: limit ]