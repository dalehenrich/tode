bu
bubackup
  "
  bu [--dir=<backup-directory>] backup <backup-file>
"

  | backupFilePath |
  self getSubcommandOptsMixedLongShort: {}.
  backupFilePath := self resolveBackupFilePath.
  ^ self buBackup: backupFilePath