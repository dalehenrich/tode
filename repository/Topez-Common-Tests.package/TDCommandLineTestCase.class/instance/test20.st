as yet unclassified
test20
  | commandLine |
  commandLine := 'command --a subcommand --b=optionBArg arg1'.
  TDCommandLine
    line: commandLine
    forEachCommand: [ :command | 
      | options args subCommandLine subCommandArgPtrIndex |
      self assert: command command = 'command'.
      command
        getOptsMixedLongShort: {#('a' nil #'none')}
        optionsAndArguments: [ :optionDictionary :arguments | 
          options := optionDictionary.
          args := arguments ].
      self assert: options keys size = 1.
      self assert: (options at: 'a') == nil.
      self assert: args size = 3.
      subCommandArgPtrIndex := command rawTokens size - args size.
      subCommandLine := command commandLine
        copyFrom: (command argPtrs at: subCommandArgPtrIndex)
        to: command commandLine size.
      TDCommandLine
        line: subCommandLine
        forEachCommand: [ :subCommand | 
          | subOptions subArgs |
          self assert: subCommand command = 'subcommand'.
          subCommand
            getOptsMixedLongShort: {#('b' nil #'required')}
            optionsAndArguments: [ :optionDictionary :arguments | 
              subOptions := optionDictionary.
              subArgs := arguments ].
          self assert: options keys size = 1.
          self assert: (subOptions at: 'b') = 'optionBArg'.
          self assert: subArgs size = 1.
          self assert: (subArgs at: 1) = 'arg1' ] ]