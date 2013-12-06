accessing
extension
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode extension ]
    ifFalse: [ super extension ]