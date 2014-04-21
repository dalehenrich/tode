as yet unclassified
testBuInfoCommand
  "run without errors ... to keep me honest"

  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaulBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help info';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup seaside.dbf';
    evaluateCommandString: 'bu info seaside.dbf';
    yourself