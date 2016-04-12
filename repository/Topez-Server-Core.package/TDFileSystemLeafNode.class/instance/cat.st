accessing
cat
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode cat ]
        on: STONReaderError
        do: [ :ex | self fileContents ] ]
    ifFalse: [ self fileContents ]