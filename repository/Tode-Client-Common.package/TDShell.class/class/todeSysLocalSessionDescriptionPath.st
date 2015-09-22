home
todeSysLocalSessionDescriptionPath
	| clientDescriptionsPath |
	clientDescriptionsPath := 'client/descriptions/'.
	self useTodeSys
		ifTrue: [ ^ self todeClientSysLocalPath , clientDescriptionsPath ].
	^ self todeRoot , '/' , clientDescriptionsPath