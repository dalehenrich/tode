as yet unclassified
backupDirectoryName
  BackupDirectoryName
    ifNil: [ 
      self
        backupDirectoryName:
          (GsFile _expandEnvVariable: 'GEMSTONE_DATADIR' isClient: false) , '/backups' ].
  ^ BackupDirectoryName