instance creation
forSessionNamed: aSessionName
	| sessionDescription |
	sessionDescription := TDSessionDescription importFrom: self gsDevKitSessionDescriptionPath , aSessionName.
	^ self new
		sessionDescription: sessionDescription;
		batchMode: true;
		yourself