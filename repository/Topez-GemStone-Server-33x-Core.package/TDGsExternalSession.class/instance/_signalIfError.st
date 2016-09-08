Private
_signalIfError
  | debugger exception |
  (self _gciLibrary GciErr_: gciErrSType) == 1
    ifFalse: [ ^ self ].
  self halt.
  (gciErrSType number between: 4000 and: 4999)
    ifTrue: [ gciSessionId := 0 ].
  debugger := TDRemoteDebugger new
    topez: self;
    session: self;
    debugProcessOop: gciErrSType context exceptionOop: gciErrSType exceptionObj;
    windowLabel: gciErrSType message;
    yourself.
  ^ debugger open