as yet unclassified
test15
  | parser options processedOption processNonOption |
  options := Dictionary new
    add: $c -> 'foo -d xxx';
    yourself.
  parser := TDCommandGetOpts
    parseCommand:
      (ReadStream on: 'testopt -c `foo -d xxx` arg1 `arg2 and -e friends`').
  self assert: parser command = 'testopt'.
  processNonOption := processedOption := false.
  parser
    getOpts: 'abc:'
    do: [ :opt :optArg | 
      processedOption := true.
      self assert: (options at: opt) = optArg ]
    nonOptionsDo: [ :nonOption | 
      processNonOption := true.
      self
        assert: (nonOption = 'arg1' or: [ nonOption = 'arg2 and -e friends' ]) ].
  self assert: processedOption.
  self assert: processNonOption