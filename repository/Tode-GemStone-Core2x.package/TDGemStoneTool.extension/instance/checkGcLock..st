*tode-gemstone-core2x
checkGcLock: gcLockedBlock
  | sessId |
  sessId := System sessionIdHoldingGcLock.
  sessId ~~ 0
    ifTrue: [ gcLockedBlock value: sessId ]