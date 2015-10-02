home
gsDevKitSessionDescriptionPath
	^ Smalltalk os environment
		at: 'GS_SHARED_SESSIONS'
		ifAbsent: [ 
			"allow new client to connect to an old gsDevKitHome structure"
			| clientDescriptionsPath |
			clientDescriptionsPath := 'client/descriptions/'.
			self useTodeSys
				ifTrue: [ ^ self todeClientSysLocalPath , clientDescriptionsPath ].
			^ self todeRoot , '/' , clientDescriptionsPath ]