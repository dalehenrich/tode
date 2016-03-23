source element builder
elementSource
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode elementSource ]
        on: STONReaderError
        do: [ :ex | self fileContents ] ]
    ifFalse: [ self fileContents ]