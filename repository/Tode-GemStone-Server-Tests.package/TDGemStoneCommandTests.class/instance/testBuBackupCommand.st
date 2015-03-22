tests
testBuBackupCommand
  "run without errors ... to keep me honest"

  [ 
  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaultBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help backup';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup seaside.dbf';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup --safely seaside.dbf';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        show: (GsProcess stackReportToLevel: 100) ]