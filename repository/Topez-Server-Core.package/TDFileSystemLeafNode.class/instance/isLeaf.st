accessing
isLeaf
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode isLeaf ]
        on: STONReaderError
        do: [ :ex | super isLeaf ] ]
    ifFalse: [ super isLeaf ]