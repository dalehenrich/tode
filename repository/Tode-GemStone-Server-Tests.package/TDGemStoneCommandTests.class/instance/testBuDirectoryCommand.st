tests
testBuDirectoryCommand
  "run without errors ... to keep me honest"

  | backupDirectoryPath snapshotDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaultBackupDirectoryName.
  snapshotDirectoryPath := TDGemStoneTool defaultSnapshotDirectoryName.
  self topez
    evaluateCommandString: 'bu --help directory';
    evaluateCommandString: 'bu directory';
    evaluateCommandString: 'bu directory ' , backupDirectoryPath;
    evaluateCommandString: 'bu directory --snapshot';
    evaluateCommandString: 'bu directory --snapshot ' , snapshotDirectoryPath;
    yourself