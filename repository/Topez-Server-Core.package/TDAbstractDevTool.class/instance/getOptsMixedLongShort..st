command-options
getOptsMixedLongShort: mixedOptionSpecs
  "optionName, optionCharOrNil, optionSpec (#required, #none, #optional)"

  self todeCommand
    getOptsMixedLongShort: mixedOptionSpecs
    optionsAndArguments: [ :optionDictionary :argsIn | 
      options := optionDictionary.
      arguments := argsIn ]