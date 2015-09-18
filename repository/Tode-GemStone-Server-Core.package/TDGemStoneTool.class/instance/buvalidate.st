bu
buvalidate
  "
  bu [--dir=<backup-directory>] validate [--snapshot] <backup-file>
"

  | filePath |
  self getSubcommandOptsMixedLongShort: {#('snapshot' nil #'none')}.
  filePath := subOptions
    at: 'snapshot'
    ifPresent: [ :ignored | self resolveSnapshotFilePath ]
    ifAbsent: [ self resolveBackupFilePath ].
  self buValidateReadableBackupFile: filePath