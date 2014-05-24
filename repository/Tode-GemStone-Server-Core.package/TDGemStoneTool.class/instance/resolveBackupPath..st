bu
resolveBackupPath: backupName
  ^ options
    at: 'dir'
    ifPresent: [ :dirPath | dirPath , '/' , backupName ]
    ifAbsent: [ self class backupDirectoryName , '/' , backupName ]