accessing
dataDirectory: aString

	(aString isEmpty or: [ aString last = $/ ])
		ifTrue: [ dataDirectory := aString ]
		ifFalse: [ dataDirectory := aString, '/' ]