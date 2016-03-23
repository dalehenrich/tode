accessing
block
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode block ]
        on: STONReaderError
        do: [ :ex | super block ] ]
    ifFalse: [ super block ]