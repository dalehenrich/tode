testing
testWindowLayout: aSessionName
	| sessionDescription shell|
	sessionDescription := TDSessionDescription importFrom: self gsDevKitSessionDescriptionPath , aSessionName.
	shell := self new.
	shell openOnSessionDescription: sessionDescription.
	shell evaluate: 'bin/halt'.
	