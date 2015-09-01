bu
defaultBackupDirectoryName
  | path |
  path := (GsFile _expandEnvVariable: 'GEMSTONE_DATADIR' isClient: false)
    , '/backups'.
  (ServerFileDirectory on: path) assureExistence.
  ^ path