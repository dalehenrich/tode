bu
bubackup
  "
  bu [--dir=<backup-directory>] backup <backup-file>
"

  | backupFilePath |
  backupFilePath := self resolveBackupFilePath.
  ^ self buBackup: backupFilePath