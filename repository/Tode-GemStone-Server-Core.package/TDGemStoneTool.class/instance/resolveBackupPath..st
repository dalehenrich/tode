bu
resolveBackupPath: backupName
  ^ self options
    at: 'dir'
    ifPresent: [ :dirPath | dirPath , '/' , backupName ]
    ifAbsent: [ self class backupDirectoryName , '/' , backupName ]