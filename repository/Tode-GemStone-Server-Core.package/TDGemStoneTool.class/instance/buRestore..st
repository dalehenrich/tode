bu
buRestore: backupFilePath
  | status count |
  status := SystemRepository restoreStatus.
  status = 'Restore is not active.'
    ifFalse: [ ^ self error: 'System is already in restore mode: ' , status ].
  System stopUserSessions.
  count := 0.
  [ 
  | sessionCount |
  sessionCount := 0.
  System currentSessions
    do: [ :index | 
      | id sessionArray |
      sessionArray := System descriptionOfSession: index.
      id := (sessionArray at: 1) userId.
      (id = 'GcUser' or: [ id = 'SymbolUser' ])
        ifFalse: [ sessionCount := sessionCount + 1 ] ].
  count < 30 and: [ sessionCount > 1 ] ]
    whileTrue: [ 
      (Delay forSeconds: 1) wait.
      count := count + 1 ].
  count >= 30
    ifTrue: [ 
      ^ self
        error:
          'Could not restore from backup because there are still sessions logged in.' ].
  topez restoreFromBackup: backupFilePath	"normally terminates session"