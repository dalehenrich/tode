as yet unclassified
testMixed20
  | parser options processedOption processNonOption parsedOptions |
  options := Dictionary new
    add: 'directory' -> '/tmp/fileout';
    add: 'category' -> nil;
    yourself.
  parser := TDCommandGetOpts
    parseCommand:
      (ReadStream
        on:
          'fileout --category --directory=/tmp/fileout  Index-Tests indexTests.gs').
  self assert: parser command = 'fileout'.
  processNonOption := processedOption := false.
  parsedOptions := Dictionary new.
  parser
    getOptsMixedLongShort:
      {#('directory' $d #'required').
      #('class' nil #'none').
      #('package' nil #'none').
      #('category' nil #'none')}
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