accessing
rtValue: anObject
	^ self level: (objects indexOf: (command rtValue: anObject)) - 1 / objects size