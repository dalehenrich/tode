as yet unclassified
performCommand: topez withSelector: alternateSelectorOrNil objIn: objIn commandOptions: commandOptions todeCommand: aTDCommandLine
  | shTool cmd selector |
  shTool := self topez: topez objIn: objIn todeCommand: aTDCommandLine.
  shTool getOptsMixedLongShort: commandOptions.
  cmd := shTool todeCommand command.
  shTool options at: 'help' ifPresent: [ :ignored | ^ shTool man: cmd ].
  alternateSelectorOrNil
    ifNotNil: [ :sel | selector := sel ]
    ifNil: [ selector := cmd asSymbol ].
  ^ shTool perform: selector