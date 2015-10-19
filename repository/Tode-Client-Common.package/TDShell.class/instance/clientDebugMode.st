accessing
clientDebugMode
	clientDebugMode ifNil: [ ^ false ].
	^ clientDebugMode