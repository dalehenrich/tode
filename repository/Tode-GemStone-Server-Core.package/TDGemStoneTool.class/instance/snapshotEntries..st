bu
snapshotEntries: backupPath
  | backupDirPath |
  backupDirPath := self resolveSnapshotPath: backupPath.
  ^ self buEntriesForDirectory: (ServerFileDirectory on: backupDirPath)