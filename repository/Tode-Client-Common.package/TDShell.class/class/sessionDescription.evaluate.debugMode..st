instance creation
sessionDescription: sessionDescription evaluate: aCommand debugMode: aBool
	| shell |
	shell := self new.
	shell sessionDescription: sessionDescription.
	shell debugMode: aBool.
	^shell evaluate: aCommand