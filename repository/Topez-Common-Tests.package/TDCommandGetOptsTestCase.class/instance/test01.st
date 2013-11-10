as yet unclassified
test01
  | parser |
  parser := TDCommandGetOpts parse: (ReadStream on: 'testopt').
  self assert: parser command = 'testopt'.
  parser
    parseOptions: 'abc:'
    do: [ :opt :optArg | self assert: false ]
    nonOptionsDo: [ :nonOption | self assert: false ]