bu
snapshotDirectoryName: aDirectoryPathOrNil
  "self snapshotDirectoryName: nil"

  SnapshotDirectoryName := aDirectoryPathOrNil.
  aDirectoryPathOrNil
    ifNotNil: [ (ServerFileDirectory on: aDirectoryPathOrNil) assureExistence ]