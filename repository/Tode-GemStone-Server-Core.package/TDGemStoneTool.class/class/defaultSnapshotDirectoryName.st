bu
defaultSnapshotDirectoryName
  ^ ((ServerFileDirectory on: self backupDirectoryName) containingDirectory
    directoryNamed: 'snapshot') fullName