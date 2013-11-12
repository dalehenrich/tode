as yet unclassified
testLong21
  | parser options processedOption processNonOption parsedOptions optionsSpec |
  options := Dictionary new
    add: 'directory' -> '/tmp/fileout';
    add: 'category' -> nil;
    yourself.
  parser := TDCommandGetOpts
    parseCommand:
      (ReadStream
        on:
          'fileout --directory=/tmp/fileout --category Index-Tests indexTests.gs').
  self assert: parser command = 'fileout'.
  processNonOption := processedOption := false.
  parsedOptions := Dictionary new.
  optionsSpec := Dictionary new
    at: 'directory' put: #'required';
    at: 'class' put: #'none';
    at: 'package' put: #'none';
    at: 'category' put: #'none';
    yourself.
  parser
    getOptsLong: optionsSpec
    do: [ :opt :optArg | 
      processedOption := true.
      parsedOptions at: opt put: optArg ]
    nonOptionsDo: [ :nonOption | 
      processNonOption := true.
      nonOption = 'Index-Tests' or: [ nonOption = 'indexTests.gs' ] ].
  options
    keysAndValuesDo: [ :key :value | self assert: (parsedOptions at: key) = (options at: key) ].
  self assert: processedOption.
  self assert: processNonOption