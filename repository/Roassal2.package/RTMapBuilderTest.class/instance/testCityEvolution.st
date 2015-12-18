tests
testCityEvolution
	| myCities santiago |
	myCities := #(
		#('Santiago' #(33 41))
	).
	
	builder cities: myCities named: [ :c | c at: 1 ].
	builder cities evolveAt: 2 through: #(1907 1920).
	self assert: (myCities == builder cityObjects) not.
	self assert: ((myCities at: 1) == (builder cityObjects at: 1)) not.
	
	santiago := builder cityObjects at: 1.
	self assert: (santiago at: 2) currentValue = 33.
	
	builder cities stepBack.
	self assert: (santiago at: 2) currentValue = 33.
	
	builder cities stepForward.
	self assert: (santiago at: 2) currentValue = 41.
	
	builder cities stepForward.
	self assert: (santiago at: 2) currentValue = 41.
	
