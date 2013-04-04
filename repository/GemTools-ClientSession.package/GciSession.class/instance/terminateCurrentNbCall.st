private gci calls
terminateCurrentNbCall
  "The client process was terminated, so do the same to the server one."

  | error |
  [ 
  error := self
    hardBreak;
    getNbResult;
    getAndClearLastError.
  error notNil
    ifTrue: [ self clearStack: error context ] ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: 'Error during GCI termination: ' , ex description ]