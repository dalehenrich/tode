as yet unclassified
testLong14
  | parser options processedOption processNonOption |
  options := Dictionary new
    add: 'argC' -> 'foo';
    yourself.
  parser := TDCommandGetOpts
    parseCommand: (ReadStream on: 'testopt --argC=foo arg1 arg2').
  self assert: parser command = 'testopt'.
  processNonOption := processedOption := false.
  parser
    getOptsLong: self longOptionSpec
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | 
      processNonOption := true.
      self assert: (nonOption = 'arg1' or: [ nonOption = 'arg2' ]) ].
  self assert: processedOption.
  self assert: processNonOption