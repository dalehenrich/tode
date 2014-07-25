accessing
debugMode
	debugMode ifNil: [ debugMode := self class debugMode ].
	^ debugMode