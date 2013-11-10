as yet unclassified
test06
  | parser options processedOption |
  options := Dictionary new
    add: $c -> 'foo';
    yourself.
  parser := TDCommandGetOpts parse: (ReadStream on: 'testopt -cfoo').
  self assert: parser command = 'testopt'.
  processedOption := false.
  parser
    parseOptions: 'abc:'
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | self assert: false ].
  self assert: processedOption