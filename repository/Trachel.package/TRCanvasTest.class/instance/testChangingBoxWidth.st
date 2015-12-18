shapes
testChangingBoxWidth
	| box |
	box := TRBoxShape new.
	self assert: box width = 0.
	box width: 15.
	self assert: box width = 15.
	box width: 20.
	self assert: box width = 20
