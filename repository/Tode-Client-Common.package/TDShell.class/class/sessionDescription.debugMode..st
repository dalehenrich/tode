instance creation
sessionDescription: sessionDescription debugMode: aBool
	| shell |
	shell := self sessionDescription: sessionDescription.
	shell debugMode: aBool.
	^ shell