bu
snapshotExtentFilePaths
  ^ SystemRepository fileNames
    collect: [ :each | 
      (each indexOf: $! startingAt: 1) = 0
        ifTrue: [ each ]
        ifFalse: [ 
          | idx |
          "in 2.4.x, the the NRS is tacked on the front of the filename"
          idx := each indexOf: $! startingAt: 2.
          each copyFrom: idx + 1 to: each size ] ]