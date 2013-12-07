accessing
creationTime
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode creationTime ]
    ifFalse: [ self directoryEntry creationTime asDateAndTime ]