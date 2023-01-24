*tode-gemstone-core3x
checkSystemIsVoting: isVotingBlock
  | vs sessions |
  vs := System voteState.
  sessions := System sessionsHoldingGcLock.
  (sessions size > 0 or: [ vs > 0 and: [ vs < 4 ] ])
    ifTrue: [ isVotingBlock value: (sessions at: 1) value: vs ]
