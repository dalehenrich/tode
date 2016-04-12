as yet unclassified
stonOn: stonWriter
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode stonOn: stonWriter ]
        on: STONReaderError
        do: [ :ex | self halt ] ]
    ifFalse: [ self halt ]