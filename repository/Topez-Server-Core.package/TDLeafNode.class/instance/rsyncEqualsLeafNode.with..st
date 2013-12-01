rsync
rsyncEqualsLeafNode: destNode with: aTDSTONRsync
  "for equals we ignore time stamps"

  (aTDSTONRsync compareSize: self rsyncSize and: destNode rsyncSize)
    ifFalse: [ ^ false ].
  ^ self contents = destNode contents