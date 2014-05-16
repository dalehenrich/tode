as yet unclassified
testBuListCommand
  "run without errors ... to keep me honest"

  [ 
  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaulBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help list';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup seaside.dbf';
    evaluateCommandString: 'bu list';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        show: (GsProcess stackReportToLevel: 100) ]