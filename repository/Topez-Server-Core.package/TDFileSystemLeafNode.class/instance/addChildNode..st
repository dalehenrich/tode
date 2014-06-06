accessing
addChildNode: aNode
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode addChildNode: aNode ]
    ifFalse: [ super addChildNode: aNode ]