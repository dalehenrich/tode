private
executeCommand: command
    "TZEngine class>>executeExpressionFrom:inContext:level:"

    | cmdSton |
    command options: self commandOptions.
    cmdSton := STON toString: command.
    ^ self executeStringInSession: 'TZEngine executeCommandFrom: ' , cmdSton printString