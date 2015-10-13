home
gsDevKitSessionDescriptionPath
	^ (Smalltalk os environment
		at: 'GS_SYS_SESSIONS'
		ifAbsent: [ 
			| clientDescriptionsPath "allow new client to connect to an old gsDevKitHome structure" |
			clientDescriptionsPath := 'client/descriptions/'.
			self useTodeSys
				ifTrue: [ ^ self todeClientSysLocalPath , clientDescriptionsPath ].
			^ self todeRoot , '/' , clientDescriptionsPath ]) , '/'