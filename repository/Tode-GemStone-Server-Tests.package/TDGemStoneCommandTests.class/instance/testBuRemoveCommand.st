tests
testBuRemoveCommand
  "run without errors ... to keep me honest"

  [ 
  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaultBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help remove';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup test.dbf';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' remove test.dbf';
    evaluateCommandString:
        'bu --dir=' , TDGemStoneTool defaultSnapshotDirectoryName , ' snapshot test.dbf';
    evaluateCommandString:
        'bu --dir=' , TDGemStoneTool defaultSnapshotDirectoryName , ' remove test.dbf';
    evaluateCommandString:
        'bu --dir=' , TDGemStoneTool defaultSnapshotDirectoryName , ' snapshot test.dbf';
    evaluateCommandString: 'bu remove --snapshot test.dbf';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        show: (GsProcess stackReportToLevel: 100) ]