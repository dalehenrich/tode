as yet unclassified
testBuRemoveCommand
  "run without errors ... to keep me honest"

  [ 
  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaulBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help remove';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup seaside.dbf';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' remove seaside.dbf';
    yourself ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: ex description;
        show: (GsProcess stackReportToLevel: 100) ]