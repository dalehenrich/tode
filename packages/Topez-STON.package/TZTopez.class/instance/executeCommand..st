private
executeCommand: command
    | cmdSton |
    command options: self commandOptions.
    cmdSton := STON toString: command.
    ^ self executeStringInSession: 'TZEngine executeCommandFrom: ' , cmdSton printString