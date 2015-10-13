home
todeSysLocalSessionDescriptionPath
	| clientDescriptionsPath |
	clientDescriptionsPath := 'client/descriptions/'.
	self useTodeSys
		ifTrue: [ ^ self todeSysLocalPath , clientDescriptionsPath ].
	^ self todeRoot , '/' , clientDescriptionsPath