accessing
lookup: aPath with: aTopez
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode lookup: aPath with: aTopez ]
    ifFalse: [ super lookup: aPath with: aTopez ]