bu
buinfo
  "
  bu [--dir=<backup-directory>] info [--snapshot] <backup-file>
"

  | backupFilePath copyDbfCommand |
  self getSubcommandOptsMixedLongShort: {#('snapshot' nil #'none')}.
  subOptions
    at: 'snapshot'
    ifPresent: [ :ignored | backupFilePath := self resolveSnapshotFilePath ]
    ifAbsent: [ backupFilePath := self resolveBackupFilePath ].
  copyDbfCommand := (GsFile _expandEnvVariable: 'GEMSTONE' isClient: false)
    , '/bin/copydbf -i ' , backupFilePath.
  ^ System performOnServer: copyDbfCommand