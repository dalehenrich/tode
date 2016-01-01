bu
budirectory
  "
  bu directory [--snapshot] [<backup-directory>]
"

  self getSubcommandOptsMixedLongShort: {#('snapshot' nil #'none')}.
  subOptions
    at: 'snapshot'
    ifPresent: [ :ignored | 
      subArguments size > 0
        ifTrue: [ self class snapshotDirectoryName: (subArguments at: 1) ].
      ^ self snapshotBackupDirectory ]
    ifAbsent: [ 
      subArguments size > 0
        ifTrue: [ self class backupDirectoryName: (subArguments at: 1) ].
      ^ self buBackupDirectory ]