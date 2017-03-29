*tode-gemstone-core2x
checkSystemIsVoting: isVotingBlock
  | vs sessId |
  vs := System voteState.
  sessId := System sessionIdHoldingGcLock.
  (sessId ~~ 0 or: [ vs > 0 and: [ vs < 4 ] ])
    ifTrue: [ isVotingBlock value: sessId value: vs ]