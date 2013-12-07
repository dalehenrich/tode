as yet unclassified
testLong05
  | parser options processedOption |
  options := Dictionary new
    add: 'argC' -> 'foo';
    yourself.
  parser := TDCommandGetOpts parseCommand: (ReadStream on: 'testopt --argC=foo').
  self assert: parser command = 'testopt'.
  processedOption := false.
  parser
    getOptsLong: self longOptionSpec
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | self assert: false ].
  self assert: processedOption