as yet unclassified
evaluateTokens: tokens
    | stonString |
    stonString := STON toString: tokens.
    ^ self evaluateTokenMessage value: stonString