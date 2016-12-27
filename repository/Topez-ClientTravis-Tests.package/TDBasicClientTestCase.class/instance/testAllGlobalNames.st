tests
testAllGlobalNames
	| allGlobalNames |
	self
		todeShellDo: [ :shell | 
			allGlobalNames := TZGemStoneProxyBehavior new
				topez: shell topez;
				allGlobalNames ].
	self assert: (allGlobalNames includes: #Object)