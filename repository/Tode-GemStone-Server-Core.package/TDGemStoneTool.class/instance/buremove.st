bu
buremove
  "
  bu [--dir=<backup-directory>] remove <backup-file>
"

  | backupFilePath |
  self getSubcommandOptsMixedLongShort: {}.
  backupFilePath := self resolveBackupFilePath.
  ^ self buRemove: backupFilePath