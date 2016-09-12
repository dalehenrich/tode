Private
_signalIfError
  | debugger exception |
  self handlingError
    ifTrue: [ ^ super _signalIfError ].
  (self _gciLibrary GciErr_: gciErrSType) == 1
    ifFalse: [ ^ self ].
  (gciErrSType number between: 4000 and: 4999)
    ifTrue: [ ^ super _signalIfError ].
  handlingError := true.
  debugger := TDRemoteDebugger new
    topez: self topez;
    debugProcessOop: gciErrSType context
      exceptionOop: gciErrSType exceptionObj
      session: self;
    windowLabel: gciErrSType message;
    yourself.
  ^ debugger open