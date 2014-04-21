bu
backupDirectoryName: aDirectoryPathOrNil
  BackupDirectoryName := aDirectoryPathOrNil.
  aDirectoryPathOrNil
    ifNotNil: [ (ServerFileDirectory on: aDirectoryPathOrNil) assureExistence ]