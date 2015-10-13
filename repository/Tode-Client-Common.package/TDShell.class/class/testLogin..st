testing
testLogin: aSessionName
	| sessionDescription |
	sessionDescription := TDSessionDescription importFrom: self gsDevKitSessionDescriptionPath , aSessionName.
	^ self testLoginForSessionDescription: sessionDescription