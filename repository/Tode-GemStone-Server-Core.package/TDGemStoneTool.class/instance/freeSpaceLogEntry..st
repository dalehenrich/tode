commands
freeSpaceLogEntry: exception
  | fileSize freeSpace used fileUnit freeUnit usedUnit |
  fileSize := SystemRepository fileSize / 1024.0.
  freeSpace := SystemRepository freeSpace / 1024.0.
  used := fileSize - freeSpace.
  fileUnit := fileSize > 1024
    ifTrue: [ 
      fileSize := fileSize / 1024.
      'M' ]
    ifFalse: [ 'K' ].
  freeUnit := freeSpace > 1024
    ifTrue: [ 
      freeSpace := freeSpace / 1024.
      'M' ]
    ifFalse: [ 'K' ].
  usedUnit := used > 1024
    ifTrue: [ 
      used := used / 1024.
      'M' ]
    ifFalse: [ 'K' ].
  (ObjectLogEntry
    trace: 'CLIENT: Repository Size'
    object:
      'Repository: ' , (fileSize printShowingDecimalPlaces: 2) , fileUnit , ', Free: '
        , (freeSpace printShowingDecimalPlaces: 2) , freeUnit , ', Used: '
        , (used printShowingDecimalPlaces: 2) , usedUnit)
    addToLog.
  (ObjectLogEntry trace: 'CLIENT: MFC' object: exception) addToLog