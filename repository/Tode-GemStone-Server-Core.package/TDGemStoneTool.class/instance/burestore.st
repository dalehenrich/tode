bu
burestore
  "
  bu [--dir=<backup-directory>] restore <backup-file>
"

  | backupFilePath |
  self getSubcommandOptsMixedLongShort: {}.
  backupFilePath := self resolveBackupFilePath.
  self buRestore: backupFilePath