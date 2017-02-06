*tode-gemstone-core3x
checkGcLock: gcLockedBlock
  | sessId |
  sessId := System sessionIdHoldingGcLock.
  sessId ~~ 0
    ifTrue: [ gcLockedBlock value: sessId ]