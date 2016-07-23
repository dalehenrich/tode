tests - server blocks
testSimpleServerBlockWithTempsRef
	| x y |
	x := 3.
	y := 4.
	self assert: (self client onServerDo: [ x+ y ]) = 7