private
executeCommand: command
    | cmdSton |
    command options: self commandOptions.
    cmdSton := STON toString: command.
    ^ STON fromString: (self executeStringInSession: 'TZEngine executeCommandFrom: ' , cmdSton printString)