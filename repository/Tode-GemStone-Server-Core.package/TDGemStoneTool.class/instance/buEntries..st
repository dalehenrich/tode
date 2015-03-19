bu
buEntries: backupPath
  | backupDirPath |
  backupDirPath := self resolveBackupPath: backupPath.
  ^ self buEntriesForDirectory: (ServerFileDirectory on: backupDirPath)