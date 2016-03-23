accessing
childrenAndNamesDo: aBlock
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode childrenAndNamesDo: aBlock ]
        on: STONReaderError
        do: [ :ex | self yourself ] ]
    ifFalse: [ 
      "no children"
      self yourself ]