as yet unclassified
testBrowseVariables
  "run without errors ... to keep me honest"

  [ 
  self topez
    evaluateCommandString: 'browse --help variables';
    evaluateCommandString: 'browse variables --class=TDShellTool listLimit';
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