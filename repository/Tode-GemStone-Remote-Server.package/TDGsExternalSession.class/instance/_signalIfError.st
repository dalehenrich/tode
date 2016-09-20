private
_signalIfError
  | debugger exception |
  (self _gciLibrary GciErr_: gciErrSType) == 1
    ifFalse: [ ^ self ].
  (gciErrSType number between: 4000 and: 4999)
    ifTrue: [ ^ super _signalIfError ].
  self handlingError
    ifTrue: [ TDExceptionDuringStep signal: gciErrSType number ].
  handlingError := true.
  debugger := TDRemoteDebugger new
    topez: self topez;
    debugProcessOop: gciErrSType context
      exceptionOop: gciErrSType exceptionObj
      session: self;
    windowLabel: gciErrSType message;
    yourself.
  ^ debugger open