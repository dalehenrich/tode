testing
testLogin: aSessionName
	| sessionDescription |
	sessionDescription := TDSessionDescription importFrom: self sessionDescriptionHome , aSessionName.
	^ self testLoginForSessionDescription: sessionDescription