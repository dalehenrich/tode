accessing
evaluateCommandStream: aStream
  | commandResultObj |
  TDCommandLine
    fromStream: aStream
    forEachCommand: [ :command | 
      commandResultObj := self evaluateCommand: command objIn: self objIn.
      self objIn: commandResultObj resultObject ].
  ^ commandResultObj resultObject