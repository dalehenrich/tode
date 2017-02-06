bu
bubackup
  "
  bu [--dir=<backup-directory>] backup [--safely] [--commit] [--novalidate] \
     [--uncompressed] [--wait] <backup-file>
"

  | backupFilePath safely uncompressed validate waitForVotingToComplete |
  self getSubcommandOptsMixedLongShort: {#('safely' nil #'none').
      #('commit' nil #'none').
      #('wait' nil #'none').
      #('novalidate' nil #'none').
      #('uncompressed' nil #'none')}.
  backupFilePath := self resolveBackupFilePath.
  subOptions at: 'commit' ifPresent: [ :ignored | System commitTransaction
        ifFalse: [ self error: 'Commit conflicts, backup aborted' ] ].
  subOptions
    at: 'safely'
    ifPresent: [ :ignored | safely := true ]
    ifAbsent: [ safely := false ].
  subOptions
    at: 'uncompressed'
    ifPresent: [ :ignored | uncompressed := true ]
    ifAbsent: [ uncompressed := false ].
  subOptions
    at: 'wait'
    ifPresent: [ :ignored | waitForVotingToComplete := true ]
    ifAbsent: [ waitForVotingToComplete := false ].
  subOptions
    at: 'novalidate'
    ifPresent: [ :ignored | validate := false ]
    ifAbsent: [ validate := true ].
  ^ self
    buBackup: backupFilePath
    waitForVotingToComplete: waitForVotingToComplete
    safely: safely
    uncompressed: uncompressed
    validate: validate