command-options
getSubcommandOptsMixedLongShort: mixedOptionSpecs
  | cmd subCommandArgPtrIndex subCommandLine |
  cmd := self todeCommand.
  subCommandArgPtrIndex := cmd rawTokens size - arguments size.
  subCommandLine := cmd commandLine
    copyFrom: (cmd argPtrs at: subCommandArgPtrIndex)
    to: cmd commandLine size.
  TDCommandLine
    line: subCommandLine
    forEachCommand: [ :aCommand | 
      subCommand := aCommand.
      subCommand
        getOptsMixedLongShort: mixedOptionSpecs
        optionsAndArguments: [ :optionDictionary :arguments | 
          subOptions := optionDictionary.
          subArguments := arguments ] ]