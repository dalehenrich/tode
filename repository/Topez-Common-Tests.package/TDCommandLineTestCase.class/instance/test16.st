as yet unclassified
test16
  | commandLine |
  commandLine := 'command  -c foo arg1 > result'.
  TDCommandLine
    line: commandLine
    forEachCommand: [ :command | 
      | options args |
      self assert: command command = 'command'.
      self assert: command redirectTarget = 'result'.
      command
        getOpts: 'abc:'
        optionsAndArguments: [ :optionDictionary :arguments | 
          options := optionDictionary.
          args := arguments ].
      self assert: options keys size = 1.
      self assert: (options at: 'c') = 'foo'.
      self assert: args size = 1.
      self assert: (args at: 1) = 'arg1' ]