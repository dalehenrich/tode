accessing
contents: anObject
  (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode contents: anObject ]
    ifFalse: [ super contents: anObject ]