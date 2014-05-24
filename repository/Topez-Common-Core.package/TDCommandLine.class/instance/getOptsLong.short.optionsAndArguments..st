parsing
getOptsLong: longOptionSpec short: shortOptionAliases optionsAndArguments: optsAndArgsBlock
  | options args |
  options := Dictionary new.
  args := OrderedCollection new.
  self hasSubCommand
    ifTrue: [ 
      self
        getSubCommandLongOpts: longOptionSpec
        short: shortOptionAliases
        do: [ :option :optionArg | options at: option asString put: optionArg ]
        argsDo: [ :arg | args add: arg ] ]
    ifFalse: [ 
      self
        getCommandLongOpts: longOptionSpec
        short: shortOptionAliases
        do: [ :option :optionArg | options at: option asString put: optionArg ]
        argsDo: [ :arg | args add: arg ] ].
  ^ optsAndArgsBlock value: options value: args