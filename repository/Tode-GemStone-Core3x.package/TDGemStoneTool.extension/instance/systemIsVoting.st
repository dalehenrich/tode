*tode-gemstone-core3x
systemIsVoting
  | vs sessId |
  vs := System voteState.
  sessId := System sessionIdHoldingGcLock.
  ^ sessId ~= 0 or: [ vs > 0 and: [ vs < 4 ] ]