rsync
rsyncMatches: destNode with: aTDSTONRsync
  "standard rsync comparison: same size and same modified time"

  (destNode isKindOf: self class)
    ifFalse: [ ^ false ].
  (aTDSTONRsync compareSize: self rsyncSize and: destNode rsyncSize)
    ifFalse: [ ^ false ].
  (aTDSTONRsync
    compareModificationTime: self modificationTime
    and: destNode modificationTime)
    ifFalse: [ ^ false ].
  ^ true