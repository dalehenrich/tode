private gci calls
getNbResult
  "The call that initiated the non-blocking call will be one of three types:
		1. expecting nothing--e.g., GciNbAbort();
		2. expecting a Boolean--e.g., GciNbCommit();
		3. expecting an OopType--e.g., GciNbExecuteStr().
	Because we don't know how the answer should be interpreted, we simply
	return it as an Integer."

  | result error actionArgs continueWith |
  [ 
  result := self nbPollForResult.
  error := self getAndClearLastError ]
    ifCurtailed: [ self terminateCurrentNbCall ].
  error isNil
    ifTrue: [ ^ result ].
  actionArgs := error number == 2336
    ifTrue: [ 
      GsClientForwarderSendNotification new
        session: self;
        tag: error;
        signal ]
    ifFalse: [ 
      error number == 4100
        ifTrue: [ 
          "Session is invalid ... session died out from under us, so clean up session and throw the error"
          self release ].
      self signalServerError: error ].
  actionArgs isArray
    ifTrue: [ 
      (actionArgs at: 1) == #'debug'
        ifTrue: [ ^ self debuggerRequested: (actionArgs at: 2) ].
      (actionArgs at: 1) == #'abort'
        ifTrue: [
	       self terminateOnProcessAbort: error. 
	       ^ actionArgs at: 2 ].
      (actionArgs at: 1) == #'resume'
        ifTrue: [ continueWith := self library oopFor: (actionArgs at: 2) ]
        ifFalse: [ ^ actionArgs halt: 'incorrect return value from GsRuntimeError handler' ] ]
    ifFalse: [ 
      actionArgs = #'resume'
        ifTrue: [ continueWith := self library oopIllegal asOop ]
        ifFalse: [ ^ actionArgs halt: 'incorrect return value from GsRuntimeError handler' ] ].
  self library
    critical: [ :lib | 
      lib
        apiGciNbContinueWith: error context
        a: (self library oopTypeClass fromInteger: continueWith)
        a: 1 ].
  ^ self getNbResult