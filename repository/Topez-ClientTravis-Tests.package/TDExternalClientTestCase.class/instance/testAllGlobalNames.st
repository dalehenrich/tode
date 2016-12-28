tests
testAllGlobalNames
	| allGlobalNames |
	Transcript
		cr;
		show: self class name, '>>testAllGlobalNames '.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			allGlobalNames := TZGemStoneProxyBehavior new
				topez: shell topez;
				allGlobalNames ].
	self assert: (allGlobalNames includes: #Object).
	self deny: (allGlobalNames includes: #TDDefinition).