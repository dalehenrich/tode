bu
resolveSnapshotFilePath
  subArguments isEmpty
    ifTrue: [ self error: 'Missing required argument <backup-file>. See man page for details.' ].
  ^ self resolveSnapshotPath: (subArguments at: 1)