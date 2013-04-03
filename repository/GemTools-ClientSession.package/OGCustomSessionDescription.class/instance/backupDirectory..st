accessing
backupDirectory: aString

	(aString isEmpty or: [ aString last = $/ ])
		ifTrue: [ backupDirectory := aString ]
		ifFalse: [ backupDirectory := aString, '/' ]