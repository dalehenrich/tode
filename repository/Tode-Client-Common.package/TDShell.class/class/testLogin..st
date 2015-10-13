testing
testLogin: aSessionName
	| sessionDescription |
	sessionDescription := TDSessionDescription importFrom: self todeSysLocalSessionDescriptionPath , aSessionName.
	^ self testLoginForSessionDescription: sessionDescription