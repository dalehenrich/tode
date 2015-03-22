tests
testBuSnapshotCommand
  "run without errors ... to keep me honest"

  [ 
  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaultSnapshotDirectoryName.
  self topez
    evaluateCommandString: 'bu --help snapshot';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' snapshot extent0.test.dbf';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' snapshot --safely extent0.test.dbf';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' snapshot --suspend=30 extent0.test.dbf';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        show: (GsProcess stackReportToLevel: 100) ]