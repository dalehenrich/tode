command-options
processCommandOptions: mixedOptionSpecs
  "optionName, optionCharOrNil, optionSpec (#required, #none, #optional)"

  self todeCommand
    getMixedLongShortOpts: mixedOptionSpecs
    optionsAndArguments: [ :optionDictionary :argsIn | 
      options := optionDictionary.
      arguments := argsIn ]