as yet unclassified
test18
  | commandLine |
  commandLine := './command'.
  TDCommandLine
    line: commandLine
    forEachCommand: [ :command | 
      | opts args |
      command
        getOptsMixedLongShort:
          {#('help' $h #'none').
          #('optional' $o #'optional').
          #('required' $r #'required')}
        optionsAndArguments: [ :options :operands | 
          opts := options.
          args := operands ].
      self assert: opts isEmpty.
      self assert: args isEmpty ]