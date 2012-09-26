Library
autoAbort

	supportsAutoAbort ifFalse: [ ^false ].
	AutoAbort == nil ifTrue: [ AutoAbort := false ].
	^AutoAbort
