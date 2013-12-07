accessing
cat
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode cat ]
    ifFalse: [ self fileContents ]