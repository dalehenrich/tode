tests
testForceDefault

	| l |
	l := RTForceBasedLayout new.
	self assert: l edges isEmpty.
	self assert: l nodes isEmpty.