builtins
restoreBackupFrom: serverBackupPath
	| description gemstoneVersion |
	description := self sessionDescription.
	gemstoneVersion := description gemstoneVersion.
	((gemstoneVersion beginsWith: '2') or: [ gemstoneVersion beginsWith: '3.0' ])
		ifTrue: [ ^ 'tODE is not supported on ' , gemstoneVersion printString , '. You must use GemStone version ''3.1.0'' or later.' ].
	self restoreFromBackupFromClient: serverBackupPath.
	^'Successful restore'