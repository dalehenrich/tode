tests
testBuValidateCommand
  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaultBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help validate';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' backup seaside.dbf';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' validate seaside.dbf.gz';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' snapshot test.dbf';
    evaluateCommandString:
        'bu --dir=' , backupDirectoryPath , ' validate --snapshot extent0.test.dbf';
    yourself