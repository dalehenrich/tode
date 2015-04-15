instance creation
forSessionNamed: aSessionName
	| sessionDescription |
	sessionDescription := TDSessionDescription importFrom: self todeSysLocalSessionDescriptionPath , aSessionName.
	^ self new sessionDescription: sessionDescription