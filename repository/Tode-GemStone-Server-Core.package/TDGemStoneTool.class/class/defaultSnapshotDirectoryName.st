bu
defaultSnapshotDirectoryName
  | path |
  path := ((ServerFileDirectory on: self backupDirectoryName)
    containingDirectory directoryNamed: 'snapshots') fullName.
  (ServerFileDirectory on: path) assureExistence.
  ^ path