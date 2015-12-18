tests
testDefault
	self assert: RTDataSet new points isEmpty.
	self deny: RTDataSet new shouldConnect