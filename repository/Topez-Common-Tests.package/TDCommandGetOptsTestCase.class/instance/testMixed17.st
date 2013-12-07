as yet unclassified
testMixed17
  | parser options processedOption processNonOption |
  options := Dictionary new
    add: 'argA' -> nil;
    add: 'argB' -> nil;
    add: 'argC' -> 'foo -d xxx';
    yourself.
  parser := TDCommandGetOpts
    parseCommand:
      (ReadStream on: 'testopt -a --argB -c`foo -d xxx` arg1 `arg2 and -e friends`').
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
      nonOption = 'arg1' or: [ nonOption = 'arg2 and -e friends' ] ].
  self assert: processedOption.
  self assert: processNonOption