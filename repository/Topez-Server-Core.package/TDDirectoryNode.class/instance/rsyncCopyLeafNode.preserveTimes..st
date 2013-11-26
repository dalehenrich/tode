rsync
rsyncCopyLeafNode: aTDLeafNode preserveTimes: preserveTimes
  | newNode |
  newNode := aTDLeafNode cp: '.' in: self.
  preserveTimes
    ifTrue: [ aTDLeafNode rsyncTimesTo: newNode ].
  ^ newNode