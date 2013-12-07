accessing
block
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode block ]
    ifFalse: [ super block ]