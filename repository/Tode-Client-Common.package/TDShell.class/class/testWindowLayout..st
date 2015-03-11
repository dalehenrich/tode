testing
testWindowLayout: aSessionName
	| sessionDescription shell|
	sessionDescription := TDSessionDescription importFrom: self todeSysLocalSessionDescriptionPath , aSessionName.
	shell := self new.
	shell openOnSessionDescription: sessionDescription.
	shell evaluate: 'bin/halt'.
	