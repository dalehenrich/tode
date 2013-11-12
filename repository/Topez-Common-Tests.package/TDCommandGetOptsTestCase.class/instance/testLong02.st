as yet unclassified
testLong02
  | parser options processedOption |
  options := Dictionary new
    add: 'argA' -> nil;
    add: 'argB' -> nil;
    yourself.
  parser := TDCommandGetOpts
    parseCommand: (ReadStream on: 'testopt --argA --argB').
  self assert: parser command = 'testopt'.
  processedOption := false.
  parser
    getOptsLong: self longOptionSpec
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | self assert: false ].
  self assert: processedOption