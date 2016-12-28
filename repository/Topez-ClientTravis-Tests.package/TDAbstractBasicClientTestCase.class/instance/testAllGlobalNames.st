tests
testAllGlobalNames
	| allGlobalNames includesTDDefinition |
	Transcript
		cr;
		show: self class name , '>>testAllGlobalNames '.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			allGlobalNames := TZGemStoneProxyBehavior new
				topez: shell topez;
				allGlobalNames ].
	self assert: (allGlobalNames includes: #Object).
	includesTDDefinition := allGlobalNames includes: #TDDefinition.
	self isExternalClient
		ifTrue: [ self deny: includesTDDefinition ]
		ifFalse: [ self assert: includesTDDefinition ]