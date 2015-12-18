tests
testOpeningOnMultilineText2
	| elements text |
	text := 'hello world
hola mundo'.
	builder addText: text.
	elements := builder view elements.
	self assert: elements size = 7.
	self assert: (elements anySatisfy: [ :el | el model = text ]).
	self assert: (elements anySatisfy: [ :el | el model = 'hello' ]).
	self assert: (elements anySatisfy: [ :el | el model = 'world' ]).
	self assert: (elements anySatisfy: [ :el | el model = 'hola' ]).
	self assert: (elements anySatisfy: [ :el | el model = 'mundo' ]).