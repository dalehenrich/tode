accessing
dotSelfObject
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode dotSelfObject ]
    ifFalse: [ super dotSelfObject ]