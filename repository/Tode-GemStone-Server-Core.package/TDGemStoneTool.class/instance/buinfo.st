bu
buinfo
  "
  bu [--dir=<backup-directory>] info <backup-file>
"

  | backupFilePath copyDbfCommand |
  self getSubcommandOptsMixedLongShort: {}.
  backupFilePath := self resolveBackupFilePath.
  copyDbfCommand := (GsFile _expandEnvVariable: 'GEMSTONE' isClient: false)
    , '/bin/copydbf -i ' , backupFilePath.
  ^ System performOnServer: copyDbfCommand