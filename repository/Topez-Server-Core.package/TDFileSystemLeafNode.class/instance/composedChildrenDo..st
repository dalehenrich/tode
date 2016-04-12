accessing
composedChildrenDo: aBlock
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode composedChildrenDo: aBlock ]
        on: STONReaderError
        do: [ :ex | super composedChildrenDo: aBlock ] ]
    ifFalse: [ super composedChildrenDo: aBlock ]