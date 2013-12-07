as yet unclassified
test01
  | parser |
  parser := TDCommandGetOpts parseCommand: (ReadStream on: 'testopt').
  self assert: parser command = 'testopt'.
  parser
    getOpts: 'abc:'
    do: [ :opt :optArg | self assert: false ]
    nonOptionsDo: [ :nonOption | self assert: false ]