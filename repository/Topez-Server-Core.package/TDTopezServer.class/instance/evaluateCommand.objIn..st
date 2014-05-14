accessing
evaluateCommand: command objIn: anObject
  | commandNode commandOrPath commandResult block |
  commandOrPath := command command.
  commandNode := (commandOrPath includes: $/)
    ifTrue: [ self lookup: commandOrPath ]
    ifFalse: [ 
      self commands
        at: commandOrPath
        ifAbsent: [ ^ (TDUnknownCommandError signal: commandOrPath) asTDCommandResult ] ].
  block := commandNode block.
  commandResult := block numArgs = 5
    ifTrue: [ 
      block
        valueWithArguments:
          {self.
          anObject.
          (command tokens).
          command.
          commandNode} ]
    ifFalse: [ 
      block
        cull: self
        cull: anObject
        cull: command tokens
        cull: command ].
  self commitTransaction.
  ^ commandResult asTDCommandResult