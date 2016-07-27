tests - server blocks
testNestedServerBlockWithTempsRef
	| x y |
	false
		ifTrue: [ self registerGemStoneDebugger ].
	x := 3.
	y := 4.
	self
		assert:
			(self client
				onServerDo: [ | a b |
					a := 3.
					b := 4.
					[ x + y - b + 4 ] value ]) = 7