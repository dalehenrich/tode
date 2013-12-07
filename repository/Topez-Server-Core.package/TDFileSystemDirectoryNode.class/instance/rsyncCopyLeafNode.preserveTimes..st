rsync
rsyncCopyLeafNode: aTDLeafNode preserveTimes: preserveTimes
  "receiver is a destination node"

  | newNode |
  newNode := aTDLeafNode copy.
  preserveTimes
    ifTrue: [ aTDLeafNode rsyncTimesTo: newNode ].
  ^ self addChildLeafNode: newNode