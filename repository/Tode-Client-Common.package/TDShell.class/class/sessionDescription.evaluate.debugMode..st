instance creation
sessionDescription: sessionDescription evaluate: script debugMode: aBool
	| shell |
	shell := self new.
	shell sessionDescription: sessionDescription.
	shell debugMode: aBool.
	^shell evaluate: script