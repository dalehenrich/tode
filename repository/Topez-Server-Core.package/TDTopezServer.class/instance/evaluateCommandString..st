accessing
evaluateCommandString: commandString
  | commandResultObj |
  TDCommandLine
    line: commandString
    forEachCommand: [ :command | 
      commandResultObj := self evaluateCommand: command objIn: self objIn.
      self objIn: commandResultObj resultObject ].
  ^ commandResultObj resultObject