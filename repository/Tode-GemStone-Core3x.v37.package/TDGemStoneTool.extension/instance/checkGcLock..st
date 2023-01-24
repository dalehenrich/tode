*tode-gemstone-core3x
checkGcLock: gcLockedBlock
  | sessions |
  sessions := System sessionsHoldingGcLock.
  sessions size > 0
    ifTrue: [ gcLockedBlock value: (sessions at: 1) ]
