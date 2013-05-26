as yet unclassified
resolveBackupPath: backupName
  ^ (backupName beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: backupName ]
    ifFalse: [ self class backupDirectoryName , '/' , backupName ]