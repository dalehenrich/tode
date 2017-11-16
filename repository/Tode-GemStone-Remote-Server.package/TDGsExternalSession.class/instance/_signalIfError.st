private
_signalIfError
  | exception |
  (self _gciLibrary GciErr_: gciErrSType) == 1
    ifFalse: [ ^ self ].
  (gciErrSType number between: 4000 and: 4999)
    ifTrue: [ ^ super _signalIfError ].
  self inDebugger: true.
  exception := TDExceptionDuringStep new
    session: self;
    gciErrSType: gciErrSType;
    yourself.
  exception signal