accessing
addChildNode: aNode
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode addChildNode: aNode ]
        on: STONReaderError
        do: [ :ex | super addChildNode: aNode ] ]
    ifFalse: [ super addChildNode: aNode ]