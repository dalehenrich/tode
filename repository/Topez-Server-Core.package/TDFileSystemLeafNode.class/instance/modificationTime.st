accessing
modificationTime
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode modificationTime ]
    ifFalse: [ self directoryEntry modificationTime asDateAndTime ]