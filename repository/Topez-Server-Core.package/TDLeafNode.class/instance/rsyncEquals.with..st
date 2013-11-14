rsync
rsyncEquals: destNode with: aTDSTONRsync
  "for equals we ignore time stamps"

  (destNode isKindOf: self class)
    ifFalse: [ ^ false ].
  (aTDSTONRsync compareSize: self rsyncSize and: destNode rsyncSize)
    ifFalse: [ ^ false ].
  ^ self contents = destNode contents