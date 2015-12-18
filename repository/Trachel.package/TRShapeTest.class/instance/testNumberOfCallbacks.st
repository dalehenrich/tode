callback
testNumberOfCallbacks
	| s |
	s := TRBoxShape new.
	self assert: s numberOfCallbacks equals: 0.
	s addCallback: (TRExtentCallback new).
	self assert: s numberOfCallbacks equals: 1