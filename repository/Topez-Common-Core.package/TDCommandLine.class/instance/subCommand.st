accessing
subCommand
  self rawTokens size < 2
    ifTrue: [ TodeCommandError signal: 'expected a subcommand' ].
  ^ self rawTokens at: 2