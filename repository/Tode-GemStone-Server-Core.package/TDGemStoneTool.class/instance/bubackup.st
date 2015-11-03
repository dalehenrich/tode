bu
bubackup
  "
  bu [--dir=<backup-directory>] backup [--safely] [--commit] [--uncompressed] <backup-file>
"

  | backupFilePath safely uncompressed |
  self
    getSubcommandOptsMixedLongShort:
      {#('safely' nil #'none').
      #('commit' nil #'none').
      #('uncompressed' nil #'none')}.
  backupFilePath := self resolveBackupFilePath.
  subOptions
    at: 'commit'
    ifPresent: [ :ignored | 
      System commitTransaction
        ifFalse: [ self error: 'Commit conflicts, backup aborted' ] ].
  subOptions
    at: 'safely'
    ifPresent: [ :ignored | safely := true ]
    ifAbsent: [ safely := false ].
  subOptions
    at: 'uncompressed'
    ifPresent: [ :ignored | uncompressed := true ]
    ifAbsent: [ uncompressed := false ].
  ^ self buBackup: backupFilePath safely: safely uncompressed: uncompressed