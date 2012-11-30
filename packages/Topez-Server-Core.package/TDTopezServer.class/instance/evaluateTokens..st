accessing
evaluateTokens: tokens
    | commandNode commandOrPath |
    commandOrPath := tokens at: 1.
    commandNode := (commandOrPath includes: $/)
        ifTrue: [ self lookup: (tokens at: 1) ]
        ifFalse: [ self commands at: (tokens at: 1) ifAbsent: [ ^ self error: 'Unknown command: ' , (tokens at: 1) printString ] ].
    ^ commandNode block value: self value: tokens value: nil