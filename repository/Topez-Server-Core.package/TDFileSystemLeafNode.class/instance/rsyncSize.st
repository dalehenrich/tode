rsync
rsyncSize
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode rsyncSize ]
        on: STONReaderError
        do: [ :ex | self directoryEntry fileSize ] ]
    ifFalse: [ self directoryEntry fileSize ]