as yet unclassified
test11
  | parser options processedOption processNonOption |
  options := Dictionary new
    add: $a -> nil;
    yourself.
  parser := TDCommandGetOpts parseCommand: (ReadStream on: 'testopt -a -').
  self assert: parser command = 'testopt'.
  processNonOption := processedOption := false.
  parser
    getOpts: 'abc:'
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | 
      processNonOption := true.
      self assert: nonOption = '-' ].
  self assert: processedOption.
  self assert: processNonOption