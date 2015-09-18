bu
buinfo
  "
  bu [--dir=<backup-directory>] info [--snapshot] <backup-file>
"

  | filePath copyDbfCommand |
  self getSubcommandOptsMixedLongShort: {#('snapshot' nil #'none')}.
  filePath := subOptions
    at: 'snapshot'
    ifPresent: [ :ignored | self resolveSnapshotFilePath ]
    ifAbsent: [ self resolveBackupFilePath ].
  ^ self copydbf: '-i' forFilePath: filePath