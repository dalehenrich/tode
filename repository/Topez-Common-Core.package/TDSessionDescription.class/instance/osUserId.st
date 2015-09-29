accessing
osUserId

	osUserId == nil ifTrue: [ ^OSPlatform current environment getEnv: 'USER' ].
	^osUserId