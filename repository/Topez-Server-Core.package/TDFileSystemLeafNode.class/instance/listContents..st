accessing
listContents: limit
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode listContents: limit ]
        on: STONReaderError
        do: [ :ex | super listContents: limit ] ]
    ifFalse: [ super listContents: limit ]