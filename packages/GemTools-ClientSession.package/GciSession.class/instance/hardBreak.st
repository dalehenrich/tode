public gci calls
hardBreak
  "don't use critical block ... yet"

  | result endResult |
  Transcript
    cr;
    show: 'GciSession>>hardBreak: ' , self isCallInProgress printString , '...'.
  self setSession.
  self isCallInProgress
    ifFalse: [ 
      Transcript show: 'DONE'.
      ^ self ].
  Transcript show: 'INPROGRESS'.
  result := self library apiGciHardBreak.
  Transcript
    cr;
    show: 'result: ' , result printString.
  endResult := self library nbEnd.
  Transcript
    cr;
    show: 'nbEnd: ' , endResult printString.
  Transcript show: 'DONE: ' , self isCallInProgress printString , '...'