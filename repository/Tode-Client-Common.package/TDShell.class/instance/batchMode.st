accessing
batchMode
	batchMode ifNil: [ batchMode := false ].
	^ batchMode