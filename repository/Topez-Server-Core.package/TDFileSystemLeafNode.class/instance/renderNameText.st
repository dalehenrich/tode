accessing
renderNameText
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode renderNameText ]
        on: STONReaderError
        do: [ :ex | super renderNameText ] ]
    ifFalse: [ super renderNameText ]