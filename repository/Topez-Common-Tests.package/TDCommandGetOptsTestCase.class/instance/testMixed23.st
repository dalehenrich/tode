as yet unclassified
testMixed23
  | parser errorSignalled exception |
  parser := TDCommandGetOpts
    parseCommand:
      (ReadStream
        on:
          'fileout --category --directory=/tmp/fileout  Index-Tests indexTests.gs').
  errorSignalled := false.
  [ 
  parser
    getOptsMixedLongShort:
      {#('directory' $d #'required').
      #('class' nil #'none').
      #('package' nil #'none').
      #('category' nil #'required')}
    do: [ :opt :optArg |  ]
    nonOptionsDo: [ :nonOption |  ] ]
    on: Error
    do: [ :ex | 
      exception := ex.
      errorSignalled := true ].
  self assert: errorSignalled.
  self
    assert: exception description
    includesSubstring: 'Missing required argument for option: category'