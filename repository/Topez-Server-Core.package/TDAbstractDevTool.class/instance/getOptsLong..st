command-options
getOptsLong: longOptionsSpec
  self todeCommand
    getOptsLong: longOptionsSpec
    optionsAndArguments: [ :optionDictionary :argsIn | 
      options := optionDictionary.
      arguments := argsIn ]