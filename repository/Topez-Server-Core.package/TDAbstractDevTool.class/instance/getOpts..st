as yet unclassified
getOpts: optionsSpec
  self todeCommand
    getOpts: optionsSpec
    optionsAndArguments: [ :optionDictionary :argsIn | 
      options := optionDictionary.
      arguments := argsIn ]