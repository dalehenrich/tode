bu
buValidateReadableBackupFile: backupFilePath
  ^ self copydbf: '' forFilePath: backupFilePath , ' /dev/null'