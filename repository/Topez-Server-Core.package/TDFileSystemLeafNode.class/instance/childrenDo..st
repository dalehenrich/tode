accessing
childrenDo: aBlock
  (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode childrenDo: aBlock ]
    ifFalse: [ super childrenDo: aBlock ]