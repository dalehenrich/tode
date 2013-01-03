as yet unclassified
evaluateTokensX: tokens
  | stonString |
  stonString := STON toString: tokens.
  ^ self evaluateTokenMessage value: stonString