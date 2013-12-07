accessing
isLeaf
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode isLeaf ]
    ifFalse: [ super isLeaf ]