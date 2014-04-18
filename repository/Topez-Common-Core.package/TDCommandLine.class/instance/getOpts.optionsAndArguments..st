parsing
getOpts: optionSpec optionsAndArguments: optsAndArgsBlock
  | options args |
  options := Dictionary new.
  args := OrderedCollection new.
  self hasSubCommand
    ifTrue: [ 
      self
        getSubCommandOpts: optionSpec
        do: [ :option :optionArg | options at: option asString put: optionArg ]
        argsDo: [ :arg | args add: arg ] ]
    ifFalse: [ 
      self
        getCommandOpts: optionSpec
        do: [ :option :optionArg | options at: option asString put: optionArg ]
        argsDo: [ :arg | args add: arg ] ].
  ^ optsAndArgsBlock value: options value: args