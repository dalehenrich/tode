accessing
modificationTime
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode modificationTime ]
        on: STONReaderError
        do: [ :ex | self directoryEntry modificationTime asDateAndTime ] ]
    ifFalse: [ self directoryEntry modificationTime asDateAndTime ]