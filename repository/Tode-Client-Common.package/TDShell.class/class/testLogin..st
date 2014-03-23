testing
testLogin: aSessionName
	| sessionDescription shell answer|
	sessionDescription := OGCustomSessionDescription importFrom: self sessionDescriptionHome , aSessionName.
	shell := self new.
	shell openOnSessionDescription: sessionDescription.
	answer := shell evaluate: 'testLogin'.
	shell exit.
	^answer