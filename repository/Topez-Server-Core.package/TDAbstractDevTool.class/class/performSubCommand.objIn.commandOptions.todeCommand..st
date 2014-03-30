as yet unclassified
performSubCommand: topez objIn: objIn commandOptions: commandOptions todeCommand: aTDCommandLine
  "subcommand is formed by forming a selector from the base command (first token)
 ad the second token"

  | shTool cmd sub selector |
  shTool := self topez: topez objIn: objIn todeCommand: aTDCommandLine.
  shTool getOptsMixedLongShort: commandOptions.
  cmd := shTool todeCommand command.
  sub := shTool subCommandToken.
  selector := (cmd , sub) asSymbol.
  shTool perform: selector