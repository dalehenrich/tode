accessing
composedChildrenDo: aBlock
  (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode composedChildrenDo: aBlock ]
    ifFalse: [ super composedChildrenDo: aBlock ]