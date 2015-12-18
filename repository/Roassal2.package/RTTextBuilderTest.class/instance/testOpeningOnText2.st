tests
testOpeningOnText2
	| elements text |
	text := 'hello world'.
	builder addText: text.
	elements := builder view elements.
	self assert: elements size = 4.
	self assert: (elements anySatisfy: [ :el | el model = text ]).
	self assert: (elements anySatisfy: [ :el | el model = 'hello' ]).
	self assert: (elements anySatisfy: [ :el | el model = ' ' ]).
	self assert: (elements anySatisfy: [ :el | el model = 'world' ]).