server callbacks
executeRestoreFromBackupFromClient: backupPath
  "restoreFromBackup normally terminates the session, so the client will need to 
    - close all of the windows (including shell window?)
    - run the command as a GCI call
    - start a new session on success and forward any errors our way"
