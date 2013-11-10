parsing
tokens
  ^ self hasSubCommand
    ifTrue: [ 
      self rawTokens.
      tokens copyFrom: 2 to: tokens size ]
    ifFalse: [ self rawTokens ]