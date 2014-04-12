testing
testLogin: aSessionName
	| sessionDescription |
	sessionDescription := OGCustomSessionDescription importFrom: self sessionDescriptionHome , aSessionName.
	^ self testLoginForSessionDescription: sessionDescription