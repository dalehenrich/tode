bu
budirectory
  "
  bu directory [<backup-file>]
"

  self getSubcommandOptsMixedLongShort: {}.
  subArguments size > 0
    ifTrue: [ self class backupDirectoryName: (subArguments at: 1) ].
  ^ self class backupDirectoryName