bu
bubackup
  "
  bu [--dir=<backup-directory>] backup [--safely] <backup-file>
"

  | backupFilePath safely |
  self getSubcommandOptsMixedLongShort: {#('safely' nil #'none')}.
  backupFilePath := self resolveBackupFilePath.
  subOptions
    at: 'safely'
    ifPresent: [ :ignored | safely := true ]
    ifAbsent: [ safely := false ].
  ^ self buBackup: backupFilePath safely: safely