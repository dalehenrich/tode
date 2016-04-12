accessing
method
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode method ]
        on: STONReaderError
        do: [ :ex | super method ] ]
    ifFalse: [ super method ]