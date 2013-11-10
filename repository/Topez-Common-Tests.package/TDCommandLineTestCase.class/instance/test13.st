as yet unclassified
test13
  | commandLine |
  commandLine := 'command subcommand -c foo arg1 > result'.
  TDCommandLine
    line: commandLine
    forEachCommand: [ :command | 
      | options args |
      self assert: command command = 'command'.
      self assert: command subCommand = 'subcommand'.
      self assert: command redirectTarget = 'result'.
      options := Dictionary new.
      args := OrderedCollection new.
      command
        getSubCommandOpts: 'abc:'
        do: [ :option :optionArg | options at: option asString put: optionArg ]
        argsDo: [ :arg | args add: arg ].
      self assert: options keys size = 1.
      self assert: (options at: 'c') = 'foo'.
      self assert: args size = 1.
      self assert: (args at: 1) = 'arg1' ]