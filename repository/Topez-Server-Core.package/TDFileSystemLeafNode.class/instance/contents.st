accessing
contents
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode contents ]
        on: STONReaderError
        do: [ :ex | self fileContents ] ]
    ifFalse: [ self fileContents ]