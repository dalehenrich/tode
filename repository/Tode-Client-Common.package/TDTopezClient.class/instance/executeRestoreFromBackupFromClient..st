as yet unclassified
executeRestoreFromBackupFromClient: backupPath
  "restoreFromBackup normally terminates the session, so the client will need to 
    - close all of the windows (including shell window?)
    - run the command as a GCI call
    - start a new session on success and forward any errors our way"

  | message lastRestoreStamp |
  self shell close.
  [ 
  "restore from backup"
  Transcript
    cr;
    show: '---Starting restore from ' , backupPath printString , ' (';
    print: TimeStamp now;
    show: ')'.
  ^ self session
    executeStringExpectingStringNB:
      'SystemRepository restoreFromBackup: ' , backupPath printString
    envId: self environmentId ]
    on: GsErrorNotification
    do: [ :ex | 
      ex errorNumber ~~ 4046
        ifTrue: [ ^ ex pass ].
      Transcript
        cr;
        show: ex description ].
  self logout.
  session := self login.
  [ 
  "commit restore"
  self session
    executeStringExpectingStringNB:
      '| status |
	status := SystemRepository restoreStatus.
	(status asLowercase beginsWith: ''Restoring from Transaction Log files'' asLowercase)
		ifFalse: [ ^nil error: ''System is not prepared to commit restore: '', status].
	status := SystemRepository commitRestore.
	"normally terminates the session"
	^nil error: ''Commit restore failed: '', status'
    envId: self environmentId ]
    on: GsErrorNotification
    do: [ :ex | 
      ex errorNumber ~~ 4048
        ifTrue: [ ^ ex pass ].
      Transcript
        cr;
        show: ex description ].
  self logout.
  session := self login.
  lastRestoreStamp := self session
    executeStringExpectingStringNB: 'TDGemStoneTool lastRestore: ', backupPath printString
	 envId: self environmentId.
  message := '---Finished restore from ' , lastRestoreStamp.
  Transcript
    cr;
    show: message.
  TDRestoreFromBackupComplete signal: message	"unwind the stack back to shell prompt"