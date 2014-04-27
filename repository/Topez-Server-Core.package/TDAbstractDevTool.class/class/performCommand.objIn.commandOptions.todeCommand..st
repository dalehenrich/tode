as yet unclassified
performCommand: topez objIn: objIn commandOptions: commandOptions todeCommand: aTDCommandLine
  | shTool cmd selector |
  shTool := self topez: topez objIn: objIn todeCommand: aTDCommandLine.
  shTool getOptsMixedLongShort: commandOptions.
  cmd := shTool todeCommand command.
  shTool options at: 'help' ifPresent: [ :ignored | ^ shTool man: cmd ].
  selector := cmd asSymbol.
  ^ shTool perform: selector