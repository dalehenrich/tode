command-options
getLongOpts: longOptionsSpec short: shortOptionAliases
  self todeCommand
    getLongOpts: longOptionsSpec
    short: shortOptionAliases
    optionsAndArguments: [ :optionDictionary :argsIn | 
      options := optionDictionary.
      arguments := argsIn ]