as yet unclassified
testBuRestoreCommand
  "don't try to run the restore command...."

  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaulBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help restore';
    yourself