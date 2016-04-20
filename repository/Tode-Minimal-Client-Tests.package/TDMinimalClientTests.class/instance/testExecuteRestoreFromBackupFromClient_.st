tests - deferred
testExecuteRestoreFromBackupFromClient_
	| cmdResult |
	true
		ifTrue: [ ^ self ].	"don't accidentally restore from backup"
	cmdResult := self client evaluate: 'bu restore testBackup.dbf'