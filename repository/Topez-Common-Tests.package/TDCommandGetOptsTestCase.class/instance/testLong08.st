as yet unclassified
testLong08
  | parser options processedOption processNonOption |
  options := Dictionary new
    add: 'argA' -> nil;
    yourself.
  parser := TDCommandGetOpts
    parseCommand: (ReadStream on: 'testopt --argA arg1').
  self assert: parser command = 'testopt'.
  processNonOption := processedOption := false.
  parser
    getOptsLong: self longOptionSpec
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | 
      processNonOption := true.
      self assert: nonOption = 'arg1' ].
  self assert: processedOption.
  self assert: processNonOption