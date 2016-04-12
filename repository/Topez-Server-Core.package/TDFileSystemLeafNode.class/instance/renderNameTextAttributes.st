accessing
renderNameTextAttributes
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode renderNameTextAttributes ]
        on: STONReaderError
        do: [ :ex | super renderNameTextAttributes ] ]
    ifFalse: [ super renderNameTextAttributes ]