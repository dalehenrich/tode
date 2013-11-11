command-options
getLongOpts: longOptionsSpec
  self todeCommand
    getLongOpts: longOptionsSpec
    optionsAndArguments: [ :optionDictionary :argsIn | 
      options := optionDictionary.
      arguments := argsIn ]