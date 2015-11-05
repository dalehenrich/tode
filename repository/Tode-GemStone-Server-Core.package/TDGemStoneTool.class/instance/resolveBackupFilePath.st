bu
resolveBackupFilePath
  subArguments isEmpty
    ifTrue: [ self error: 'Missing required argument <backup-file>. See man page for details.' ].
  ^ self resolveBackupPath: (subArguments at: 1)