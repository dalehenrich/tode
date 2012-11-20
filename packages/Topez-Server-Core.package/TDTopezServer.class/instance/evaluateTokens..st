accessing
evaluateTokens: stonTokens
    | tokens commandBlock |
    tokens := STON fromString: stonTokens.
    Transcript
        cr;
        show: stonTokens printString , ' ->' , tokens printString.
    commandBlock := self commands
        at: (tokens at: 1)
        ifAbsent: [ ^ self error: 'Unknown command: ' , (tokens at: 1) printString ].
    ^ commandBlock value: self value: tokens value: nil