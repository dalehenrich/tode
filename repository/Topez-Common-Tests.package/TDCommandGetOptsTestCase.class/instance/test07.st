as yet unclassified
test07
  | parser processedNonOption |
  parser := TDCommandGetOpts parse: (ReadStream on: 'testopt arg1').
  self assert: parser command = 'testopt'.
  processedNonOption := false.
  parser
    parseOptions: 'abc:'
    do: [ :opt :optArg | self assert: false ]
    nonOptionsDo: [ :nonOption | 
      processedNonOption := true.
      self assert: nonOption = 'arg1' ].
  self assert: processedNonOption