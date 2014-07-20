instance creation
sessionDescription: sessionDescription evaluate: aCommand
	| shell |
	shell := self new.
	shell sessionDescription: sessionDescription.
	^shell evaluate: aCommand