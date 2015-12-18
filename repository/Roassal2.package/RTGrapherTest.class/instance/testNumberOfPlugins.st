tests
testNumberOfPlugins

	self assert: RTGrapher new numberOfDecorators equals: 0.
	b := RTGrapher new.
	b addDecorator: (RTVerticalLineDecorator new).
	self assert: RTGrapher new numberOfDecorators equals: 0.