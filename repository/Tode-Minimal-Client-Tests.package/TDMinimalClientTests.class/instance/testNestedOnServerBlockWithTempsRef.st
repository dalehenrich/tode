tests - server blocks
testNestedOnServerBlockWithTempsRef
	| x y |
	false
		ifTrue: [ self registerGemStoneDebugger ].
	x := 3.
	y := 4.
	[ | a b |
	a := 3.
	b := 4.
	self assert: (self client onServerDo: [ x + y - b + 4 ]) = 7 ] value