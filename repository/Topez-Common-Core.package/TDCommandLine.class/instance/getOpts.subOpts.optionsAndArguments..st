parsing
getOpts: optionSpecs subOpts: subOptionSpecs optionsAndArguments: optsAndArgsBlock
  | options arguments subCommandArgPtrIndex subCommandLine subCommand subOptions subArguments |
  self
    getOptsMixedLongShort: optionSpecs
    optionsAndArguments: [ :optionDictionary :argsIn | 
      options := optionDictionary.
      arguments := argsIn ].
  subCommandArgPtrIndex := self rawTokens size - arguments size.
  subCommandLine := self commandLine
    copyFrom: (self argPtrs at: subCommandArgPtrIndex)
    to: self commandLine size.
  TDCommandLine
    line: subCommandLine
    forEachCommand: [ :aCommand | 
      subCommand := aCommand.
      subCommand
        getOptsMixedLongShort: subOptionSpecs
        optionsAndArguments: [ :optionDictionary :argsIn | 
          subOptions := optionDictionary.
          subArguments := argsIn ] ].
  ^ optsAndArgsBlock
    value: options
    value: arguments
    value: subCommand command
    value: subOptions
    value: subArguments