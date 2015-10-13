bu
buremove
  "
  bu [--dir=<backup-directory>] remove [--snapshot] <backup-file>
"

  | filePath |
  self getSubcommandOptsMixedLongShort: {#('snapshot' nil #'none')}.
  filePath := subOptions
    at: 'snapshot'
    ifPresent: [ :ignored | self resolveSnapshotFilePath ]
    ifAbsent: [ self resolveBackupFilePath ].
  ^ self buRemove: filePath