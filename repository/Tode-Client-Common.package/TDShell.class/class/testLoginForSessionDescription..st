testing
testLoginForSessionDescription: sessionDescription
	| shell answer |
	shell := self new.
	shell openOnSessionDescription: sessionDescription.
	answer := shell evaluate: 'testLogin'.
	shell exit.
	^ answer