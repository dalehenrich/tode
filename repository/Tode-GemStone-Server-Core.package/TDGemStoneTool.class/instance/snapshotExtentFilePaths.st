bu
snapshotExtentFilePaths
  ^ SystemRepository
    fileNamescollect: [ :each | 
      | idx |
      (idx := each indexOf: $! startingAt: 2) = 0
        ifTrue: [ each ]
        ifFalse: [ 
          "in 2.4.x, the the NRS is tacked on the front of the filename"
          each copyFrom: idx + 1 to: each size ] ]