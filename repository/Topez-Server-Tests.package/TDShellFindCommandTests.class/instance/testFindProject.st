as yet unclassified
testFindProject
  "run without errors ... to keep me honest"

  [ 
  self
    evaluateCommandString: 'find --help project';
    evaluateCommandString: 'find project tode rb';
    evaluateCommandString: 'find project --exact Tode';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        cr;
        show: (GsProcess stackReportToLevel: 100) ex pass ]