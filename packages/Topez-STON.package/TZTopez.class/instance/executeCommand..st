private
executeCommand: command
    | cmdSton |
    cmdSton := STON toString: command.
    ^ STON fromString: (self executeStringInSession: 'TZEngine executeCommandFrom: ' , cmdSton printString)