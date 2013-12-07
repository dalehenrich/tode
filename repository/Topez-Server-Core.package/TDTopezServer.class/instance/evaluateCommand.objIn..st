accessing
evaluateCommand: command objIn: anObject
  | commandNode commandOrPath commandResult |
  commandOrPath := command command.
  commandNode := (commandOrPath includes: $/)
    ifTrue: [ self lookup: commandOrPath ]
    ifFalse: [ 
      self commands
        at: commandOrPath
        ifAbsent: [ ^ (TDUnknownCommandError signal: commandOrPath) asTDCommandResult ] ].
  commandResult := commandNode block
    value: self
    value: anObject
    value: command tokens
    value: command.
  self commitTransaction.
  ^ commandResult asTDCommandResult