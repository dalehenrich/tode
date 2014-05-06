accessing
evaluateTopezScriptCommand: command
  | tokens result |
  (command commandLine notEmpty and: [ command commandLine first = $# ])
    ifFalse: [ 
      tokens := command tokens.
      tokens isEmpty
        ifFalse: [ 
          | commandResult |
          commandResult := self evaluateCommand: command objIn: objIn value.
          result := commandResult resultObject.
          self objIn: result ] ].
  ^ result