tests - server blocks
testSimpleServerBlockReturningArray
	| x y |
	x := 3.
	y := 4.
	self assert: (self client onServerDo: [ {(x + y)} ]) = {7}