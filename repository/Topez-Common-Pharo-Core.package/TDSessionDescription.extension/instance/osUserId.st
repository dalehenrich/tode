*Topez-Common-Pharo-Core
osUserId
	osUserId == nil
		ifTrue: [ ^ OSPlatform current environment getEnv: 'USER' ].
	^ osUserId