as yet unclassified
testDsCommand
  "run without errors ... to keep me honest"

  [ 
  | node |
  self
    evaluateCommandString: 'ds --help ';
    evaluateCommandString: 'ds';
    yourself.
  node := self createSenderNode.
  self
    evaluateCommandString: 'ds --level=2 ' , node printString;
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: 'testDsCommand: ' , ex description;
        cr;
        show: (GsProcess stackReportToLevel: 100) ex pass ]