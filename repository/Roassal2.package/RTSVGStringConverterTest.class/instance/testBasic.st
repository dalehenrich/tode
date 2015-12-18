tests
testBasic

	self assert: (RTSVGStringConverter new convertString: 'Hello world') equals: 'Hello&#160;world' 