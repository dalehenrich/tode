accessing
dotSelfObject
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode dotSelfObject ]
        on: STONReaderError
        do: [ :ex | super dotSelfObject ] ]
    ifFalse: [ super dotSelfObject ]