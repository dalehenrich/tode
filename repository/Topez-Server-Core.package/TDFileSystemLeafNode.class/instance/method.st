accessing
method
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode method ]
    ifFalse: [ super method ]