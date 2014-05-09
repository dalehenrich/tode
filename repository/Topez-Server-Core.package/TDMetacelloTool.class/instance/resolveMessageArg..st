support
resolveMessageArg: messageArg
  ^ (messageArg beginsWith: '@')
    ifTrue: [ (self resolveAtPathReference: messageArg) asString ]
    ifFalse: [ messageArg ]