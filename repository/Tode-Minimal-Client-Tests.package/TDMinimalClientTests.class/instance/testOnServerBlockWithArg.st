tests - server blocks
testOnServerBlockWithArg
	| ans |
	false
		ifTrue: [ self registerGemStoneDebugger ].
	ans := self performOnServerWithArg: 4.
	self assert: ans = 7