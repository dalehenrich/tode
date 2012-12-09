as yet unclassified
evaluateTokens: tokens objIn: objIn
    | stonString |
    stonString := STON toString: tokens.
    ^ self evaluateTokenMessage
        valueWithArguments:
            {stonString.
            objIn}