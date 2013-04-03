overrides
isClassForVersion: aString

	^(aString beginsWith: '2.') and: [ (aString beginsWith: '2.2') not ]
	