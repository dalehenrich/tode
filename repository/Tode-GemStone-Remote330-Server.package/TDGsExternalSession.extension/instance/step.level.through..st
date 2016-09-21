*tode-gemstone-remote330-server
step: contextOop level: level through: throughBool
  self _errorIfCallInProgress.
  self _gciLibrary GciStep__: contextOop _: level _: throughBool.
  self isCallInProgress
    ifFalse: [ 
      TDExceptionDuringStep new
        breakpointKind: #'terminated';
        signal ].
  ^ self
    waitForResult;
    lastResult