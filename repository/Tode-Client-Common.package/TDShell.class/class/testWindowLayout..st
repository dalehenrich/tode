testing
testWindowLayout: aSessionName
	| sessionDescription shell|
	sessionDescription := OGCustomSessionDescription importFrom: self sessionDescriptionHome , aSessionName.
	shell := self new.
	shell openOnSessionDescription: sessionDescription.
	shell evaluate: 'bin/halt'.
	