accessing
restoreFromBackup: backupPath
  "restoreFromBackup normally terminates the session, so the client will need to 
    - close all of the windows (including shell window?)
    - run the command as a GCI call
    - start a new session on success 
    - do a commit restore
    - forward any errors our way, if possible"

  | status |
  status := self topezClientForwarder
    executeRestoreFromBackupFromClient: backupPath.
  ^ self error: 'Restore from backup failed: ' , status