bu
buBackup: backupPath safely: safely uncompressed: uncompressed validate: validate
  ^ self
    buBackup: backupPath
    waitForVotingToComplete: false
    safely: safely
    uncompressed: uncompressed
    validate: validate