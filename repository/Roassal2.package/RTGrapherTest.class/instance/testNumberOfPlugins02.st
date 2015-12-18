tests
testNumberOfPlugins02

	b := RTGrapher new.
	b addDecorator: (RTVerticalLineDecorator new).
	self assert: b numberOfDecorators equals: 1.