tests
testBasic
	| l |
	l := RTForceBasedLayout new.
	self assert: l shouldUseProgressBar.
	
	l doNotUseProgressBar.
	self deny: l shouldUseProgressBar.