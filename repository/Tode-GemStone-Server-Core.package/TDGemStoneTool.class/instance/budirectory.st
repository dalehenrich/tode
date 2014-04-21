bu
budirectory
  "
  bu directory [<backup-file>]
"

  arguments size > 0
    ifTrue: [ self class backupDirectoryName: (arguments at: 1) ].
  ^ self class backupDirectoryName