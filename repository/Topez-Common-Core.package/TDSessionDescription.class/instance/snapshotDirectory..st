accessing
snapshotDirectory: aString

	(aString isEmpty or: [ aString last = $/ ])
		ifTrue: [ snapshotDirectory := aString ]
		ifFalse: [ snapshotDirectory := aString, '/' ]