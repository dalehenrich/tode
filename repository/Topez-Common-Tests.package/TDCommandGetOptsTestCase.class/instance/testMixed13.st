as yet unclassified
testMixed13
  | parser options processedOption processNonOption |
  options := Dictionary new
    add: 'argA' -> nil;
    add: 'argB' -> nil;
    add: 'argC' -> 'foo';
    yourself.
  parser := TDCommandGetOpts
    parseCommand: (ReadStream on: 'testopt -a --argB --argC=foo arg1').
  self assert: parser command = 'testopt'.
  processNonOption := processedOption := false.
  parser
    getOptsLong: self longOptionSpec
    short: self shortOptionAliases
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | 
      processNonOption := true.
      self assert: nonOption = 'arg1' ].
  self assert: processedOption.
  self assert: processNonOption