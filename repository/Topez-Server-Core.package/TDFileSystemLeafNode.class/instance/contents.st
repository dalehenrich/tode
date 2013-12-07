accessing
contents
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode contents ]
    ifFalse: [ super contents ]