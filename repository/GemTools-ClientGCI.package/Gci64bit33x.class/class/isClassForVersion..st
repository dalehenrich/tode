as yet unclassified
isClassForVersion: aString
	^ (((((aString beginsWith: '3.3') or: [ aString beginsWith: '3.4' ]) or: [ aString beginsWith: '3.5' ]) or: [ aString beginsWith: '3.6' ]) or: [ aString beginsWith: '3.7' ])