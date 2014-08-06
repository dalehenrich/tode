accessing
debugMode
	debugMode ifNil: [ ^ self class debugMode ].
	^ debugMode