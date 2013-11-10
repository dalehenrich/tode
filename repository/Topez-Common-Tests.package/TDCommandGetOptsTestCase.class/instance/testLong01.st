as yet unclassified
testLong01
  | parser |
  parser := TDCommandGetOpts parseCommand: (ReadStream on: 'testopt').
  self assert: parser command = 'testopt'.
  parser
    getLongOpts: self longOptionSpec
    do: [ :opt :optArg | self assert: false ]
    nonOptionsDo: [ :nonOption | self assert: false ]