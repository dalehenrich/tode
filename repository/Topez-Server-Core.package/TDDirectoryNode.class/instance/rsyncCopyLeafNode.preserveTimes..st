rsync
rsyncCopyLeafNode: aTDLeafNode preserveTimes: preserveTimes
  "receiver is a destination node"

  | newNode |
  newNode := aTDLeafNode cp: '.' in: self.
  preserveTimes
    ifTrue: [ aTDLeafNode rsyncTimesTo: newNode ].
  ^ newNode