accessing
logExceptionStack
  | process debugger exception |
  process := self serverStatus exceptionProcess.
  exception := self serverStatus exception.
  debugger := TDDebugger new
    topez: self;
    debugProcess: process exception: exception;
    windowLabel: process printString;
    yourself.
  Transcript
    cr;
    show: 'EXCEPTION: ' , exception description.
  debugger frameList
    do: [ :frame | 
      Transcript
        cr;
        show: frame asString ].
  Transcript cr.
  ^ nil