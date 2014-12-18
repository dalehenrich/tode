accessing
findMatchingPathFor: aPath with: aTopez
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode findMatchingPathFor: aPath with: aTopez ]
    ifFalse: [ super findMatchingPathFor: aPath with: aTopez ]