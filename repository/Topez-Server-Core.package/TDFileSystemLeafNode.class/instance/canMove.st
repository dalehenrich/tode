accessing
canMove
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode canMove ]
    ifFalse: [ super canMove ]