tests
testBuInfoCommand
  "run without errors ... to keep me honest"

  [ 
  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaultBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help info';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup test.dbf';
    evaluateCommandString: 'bu info test.dbf.gz';
    evaluateCommandString:
        'bu --dir=' , TDGemStoneTool defaultSnapshotDirectoryName , ' snapshot test.dbf';
    evaluateCommandString: 'bu info --snapshot extent0.test.dbf';
    evaluateCommandString:
        'bu --dir=' , TDGemStoneTool defaultSnapshotDirectoryName
            , ' info extent0.test.dbf';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        show: (GsProcess stackReportToLevel: 100) ]