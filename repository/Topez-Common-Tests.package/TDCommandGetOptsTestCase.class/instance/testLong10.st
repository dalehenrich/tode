as yet unclassified
testLong10
  | parser options processedOption processNonOption |
  options := Dictionary new
    add: 'argA' -> nil;
    yourself.
  parser := TDCommandGetOpts
    parseCommand: (ReadStream on: 'testopt --argA -- --argB').
  self assert: parser command = 'testopt'.
  processNonOption := processedOption := false.
  parser
    getOptsLong: self longOptionSpec
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | 
      processNonOption := true.
      self assert: nonOption = '--argB' ].
  self assert: processedOption.
  self assert: processNonOption