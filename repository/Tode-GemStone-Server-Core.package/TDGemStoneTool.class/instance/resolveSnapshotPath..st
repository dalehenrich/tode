bu
resolveSnapshotPath: backupName
  ^ self options
    at: 'dir'
    ifPresent: [ :dirPath | dirPath , '/' , backupName ]
    ifAbsent: [ self class snapshotDirectoryName , '/' , backupName ]