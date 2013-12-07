as yet unclassified
performSubCommand: topez objIn: objIn todeCommand: aTDCommandLine
  "subcommand is formed by forming a selector from the base command (first token)
 ad the second token"

  | base command sub |
  aTDCommandLine hasSubCommand: true.
  base := aTDCommandLine command.
  sub := aTDCommandLine subCommand.
  command := (base , sub) asSymbol.
  ^ (self topez: topez objIn: objIn todeCommand: aTDCommandLine)
    perform: command