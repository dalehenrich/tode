actions
openDebugger
  | debugger |
  debugger := TDRemoteDebugger new
    topez: self topez;
    debugProcessOop: gciErrSType context
      exceptionOop: gciErrSType exceptionObj
      session: self session;
    windowLabel: gciErrSType message;
    yourself.
  ^ debugger open