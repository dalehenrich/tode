rsync
rsyncEquals: destNode with: aTDSTONRsync
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ destNode rsyncEqualsLeafNode: self asTDLeafNode with: aTDSTONRsync ]
    ifFalse: [ self rsyncEqualsLeafNode: destNode with: aTDSTONRsync ]