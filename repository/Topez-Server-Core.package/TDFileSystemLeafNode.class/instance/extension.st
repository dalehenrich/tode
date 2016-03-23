accessing
extension
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode extension ]
        on: STONReaderError
        do: [ :ex | super extension ] ]
    ifFalse: [ super extension ]