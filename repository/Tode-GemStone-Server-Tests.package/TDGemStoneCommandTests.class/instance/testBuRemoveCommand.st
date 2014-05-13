as yet unclassified
testBuRemoveCommand
  "run without errors ... to keep me honest"

  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaulBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help remove';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup seaside.dbf';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' remove seaside.dbf';
    yourself