*tode-gemstone-core3x
systemIsVoting
  | vs sessions |
  vs := System voteState.
  sessions := System sessionsHoldingGcLock.
  ^ sessions size > 0 or: [ vs > 0 and: [ vs < 4 ] ]
