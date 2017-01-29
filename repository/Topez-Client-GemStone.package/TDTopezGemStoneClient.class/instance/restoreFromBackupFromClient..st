builtins
restoreFromBackupFromClient: backupPath
	^ self
		restoreFromBackupFromClient: backupPath
		restoreSessionDescription: self sessionDescription
		commitRestoreSessionDescription: self sessionDescription