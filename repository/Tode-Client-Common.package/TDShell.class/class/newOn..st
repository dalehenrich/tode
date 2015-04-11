instance creation
newOn: aSessionName
	| sessionDescription |
	sessionDescription := TDSessionDescription importFrom: self todeSysLocalSessionDescriptionPath , aSessionName.
	^ self new sessionDescription: sessionDescription