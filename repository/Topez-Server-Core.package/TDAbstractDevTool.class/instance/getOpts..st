as yet unclassified
getOpts: optionsSpec
  self todeCommand
    getOpts: optionsSpec
    optionsAndArguments: [ :optionDictionary :arguments | 
      options := optionDictionary.
      args := arguments ]