bu
snapshotDirectoryName: aDirectoryPathOrNil
  SnapshotDirectoryName := aDirectoryPathOrNil.
  aDirectoryPathOrNil
    ifNotNil: [ (ServerFileDirectory on: aDirectoryPathOrNil) assureExistence ]