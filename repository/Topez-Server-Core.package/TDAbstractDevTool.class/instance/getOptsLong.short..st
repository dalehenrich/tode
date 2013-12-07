command-options
getOptsLong: longOptionsSpec short: shortOptionAliases
  self todeCommand
    getOptsLong: longOptionsSpec
    short: shortOptionAliases
    optionsAndArguments: [ :optionDictionary :argsIn | 
      options := optionDictionary.
      arguments := argsIn ]