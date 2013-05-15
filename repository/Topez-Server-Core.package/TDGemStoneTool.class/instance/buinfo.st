as yet unclassified
buinfo
  "bu info <backup-name>
      info @<backup-name-path>
  "

  | backupPath copyDbfCommand |
  backupPath := self resolveBackupPath: (tokens at: 2).
  copyDbfCommand := (GsFile _expandEnvVariable: 'GEMSTONE' isClient: false)
    , '/bin/copyDbf -i ' , backupPath.
  ^ System performOnServer: copyDbfCommand