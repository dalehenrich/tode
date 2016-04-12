rsync
rsyncCopyNodeUsing: aSTONRsync
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ aSTONRsync rsyncCopyLeafNode: self asTDLeafNode ]
        on: STONReaderError
        do: [ :ex | aSTONRsync rsyncCopyLeafNode: self ] ]
    ifFalse: [ aSTONRsync rsyncCopyLeafNode: self ]