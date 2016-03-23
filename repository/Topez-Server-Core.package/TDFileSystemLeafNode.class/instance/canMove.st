accessing
canMove
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode canMove ]
        on: STONReaderError
        do: [ :ex | super canMove ] ]
    ifFalse: [ super canMove ]