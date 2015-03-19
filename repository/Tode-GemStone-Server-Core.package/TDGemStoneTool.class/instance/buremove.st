bu
buremove
  "
  bu [--dir=<backup-directory>] remove [--snapshot] <backup-file>
"

  | backupFilePath |
  self getSubcommandOptsMixedLongShort: {#('snapshot' nil #'none')}.
  subOptions
    at: 'snapshot'
    ifPresent: [ :ignored | backupFilePath := self resolveSnapshotFilePath ]
    ifAbsent: [ backupFilePath := self resolveBackupFilePath ].
  ^ self buRemove: backupFilePath