accessing
openDebugger
  self ensureSessionMethodsEnabled.
  false
    ifTrue: [ self evaluateTokens: #('debug') objIn: objIn value ]
    ifFalse: [ 
      | process debugger exception |
      process := self serverStatus exceptionProcess.
      exception := self serverStatus exception.
      debugger := TDDebugger new
        topez: self;
        debugProcess: process exception: exception;
        windowLabel: exception description;
        yourself.
      debugger open ].
  ^ nil