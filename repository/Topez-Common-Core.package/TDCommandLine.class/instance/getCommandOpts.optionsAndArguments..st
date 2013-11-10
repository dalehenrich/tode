private
getCommandOpts: optionSpec optionsAndArguments: optsAndArgsBlock
  | options args |
  options := Dictionary new.
  args := OrderedCollection new.
  self
    getCommandOpts: optionSpec
    do: [ :option :optionArg | options at: option asString put: optionArg ]
    argsDo: [ :arg | args add: arg ].
  optsAndArgsBlock value: options value: args