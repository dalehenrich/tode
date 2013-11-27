rsync
rsyncCopyLeafNode: aTDLeafNode preserveTimes: preserveTimes
  | newNode |
  newNode := aTDLeafNode copy.
  preserveTimes
    ifTrue: [ aTDLeafNode rsyncTimesTo: newNode ].
  ^ self addChildLeafNode: newNode