accessing
evaluateTokens: tokens
    | commandBlock |
    commandBlock := self commands
        at: (tokens at: 1)
        ifAbsent: [ ^ self error: 'Unknown command: ' , (tokens at: 1) printString ].
    ^ commandBlock value: self value: tokens value: nil