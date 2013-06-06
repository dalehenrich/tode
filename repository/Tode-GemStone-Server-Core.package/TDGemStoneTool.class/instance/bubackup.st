as yet unclassified
bubackup
  "bu backup <backup-name>
      backup @<backup-name-path>
  "

  | backupPath |
  backupPath := (self resolveBackupPath: (tokens at: 2)) asString.
  ^ self buBackup: backupPath