as yet unclassified
performSubCommand: topez objIn: objIn commandOptions: commandOptions todeCommand: aTDCommandLine
  "subcommand is formed by forming a selector from the base command (first token)
 ad the second token"

  | shTool cmd subCmd selector |
  shTool := self topez: topez objIn: objIn todeCommand: aTDCommandLine.
  shTool getOptsMixedLongShort: commandOptions.
  cmd := shTool todeCommand command.
  subCmd := shTool subCommandToken.
  subCmd ifNil: [ ^ shTool man: cmd ].
  shTool options
    at: 'help'
    ifPresent: [ :ignored | 
      subCmd
        ifNil: [ ^ shTool man: cmd ]
        ifNotNil: [ ^ shTool man: cmd subCommand: subCmd ] ].
  selector := (cmd , subCmd) asSymbol.
  (shTool respondsTo: selector)
    ifFalse: [ 
      shTool
        error:
          'Unknown sub command ' , subCmd printString , ' for command ' , cmd printString ].
  ^ shTool perform: selector