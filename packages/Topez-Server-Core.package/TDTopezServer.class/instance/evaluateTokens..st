accessing
evaluateTokens: stonTokens
    | tokens commandNode text |
    tokens := STON fromString: stonTokens.
    commandNode := self commands
        at: (tokens at: 1)
        ifAbsent: [ ^ self error: 'Unknown command: ' , (tokens at: 1) printString ].
    text := (commandNode block value: self value: tokens value: nil) renderText.
    ^ STON toString: text