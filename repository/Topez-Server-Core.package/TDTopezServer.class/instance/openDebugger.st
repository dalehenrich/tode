accessing
openDebugger
  self ensureSessionMethodsEnabled.
  false
    ifTrue: [ self evaluateTokens: #('debug') objIn: objIn value ]
    ifFalse: [ 
      | process debugger |
      process := self serverStatus exceptionProcess.
      debugger := TDDebugger new
        topez: self;
        debugProcess: process exception: self serverStatus exception;
        windowLabel: process printString;
        yourself.
      debugger open ].
  ^ nil