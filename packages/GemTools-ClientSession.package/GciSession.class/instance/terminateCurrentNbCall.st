private gci calls
terminateCurrentNbCall
  "The client process was terminated, so do the same to the server one."

  | error |
  Transcript
    cr;
    show: 'GciSession>>terminateCurrentNbCall....'.
  error := self
    hardBreak;
    getNbResult;
    getAndClearLastError.
  error notNil
    ifTrue: [ self clearStack: error context ].
  Transcript show: 'DONE'