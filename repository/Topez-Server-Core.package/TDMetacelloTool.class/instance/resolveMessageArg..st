support
resolveMessageArg: messageArg
  ^ (messageArg beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: messageArg ]
    ifFalse: [ messageArg ]