accessing
creationTime
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode creationTime ]
        on: STONReaderError
        do: [ :ex | self directoryEntry creationTime asDateAndTime ] ]
    ifFalse: [ self directoryEntry creationTime asDateAndTime ]