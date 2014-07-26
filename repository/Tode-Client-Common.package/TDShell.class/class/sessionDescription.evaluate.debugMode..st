instance creation
sessionDescription: sessionDescription evaluate: script debugMode: aBool
	| shell |
	shell := self sessionDescription: sessionDescription debugMode: aBool.
	shell batchMode: true.
	^ shell evaluate: script