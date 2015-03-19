as yet unclassified
testBuRestoreCommand
  "don't try to run the restore command...."

  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaultBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help restore';
    yourself