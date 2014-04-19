as yet unclassified
testBrowseList
  "run without errors ... to keep me honest"

  [ 
  | node |
  node := self createDefinitionListNode.
  self topez
    evaluateCommandString: 'browse --help list';
    evaluateCommandString: 'browse list ' , node printString;
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description.
      Transcript
        cr;
        show: (GsProcess stackReportToLevel: 100).
      ex pass ]