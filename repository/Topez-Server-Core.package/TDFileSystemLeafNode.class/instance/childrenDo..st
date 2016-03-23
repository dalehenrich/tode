accessing
childrenDo: aBlock
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode childrenDo: aBlock ]
        on: STONReaderError
        do: [ :ex | super childrenDo: aBlock ] ]
    ifFalse: [ super childrenDo: aBlock ]