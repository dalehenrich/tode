tests
testTrachelShape
	edge := RTLine edgeFrom: RTBox element to: RTBox element.
	self assert: edge trachelShape notNil.
	self assert: edge trachelShape class == TRLineShape