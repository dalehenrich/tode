as yet unclassified
testBrowseProject
  "run without errors ... to keep me honest"

  [ 
  self
    evaluateCommandString: 'browse --help project';
    evaluateCommandString: 'browse project tode rb';
    evaluateCommandString: 'browse project --exact Tode';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        cr;
        show: (GsProcess stackReportToLevel: 100) ex pass ]