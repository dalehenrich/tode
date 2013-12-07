accessing
childrenAndNamesDo: aBlock
  (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode childrenAndNamesDo: aBlock ]
    ifFalse: [ super childrenAndNamesDo: aBlock ]