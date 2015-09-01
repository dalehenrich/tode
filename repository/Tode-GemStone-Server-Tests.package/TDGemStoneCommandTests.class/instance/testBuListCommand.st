tests
testBuListCommand
  "run without errors ... to keep me honest"

  [ 
  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaultBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help list';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup test.dbf';
    evaluateCommandString:
        'bu --dir=' , TDGemStoneTool defaultSnapshotDirectoryName , ' snapshot test.dbf';
    evaluateCommandString: 'bu list';
    evaluateCommandString:
        'bu --dir=' , TDGemStoneTool defaultBackupDirectoryName , ' list';
    evaluateCommandString:
        'bu --dir=' , TDGemStoneTool defaultSnapshotDirectoryName , ' list';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        show: (GsProcess stackReportToLevel: 100) ]