tests
testOpeningOnMultilineText2Position
	| spaces text |
	text := 'hello world
hola mundo'.
	builder addText: text.
	spaces := builder view elements select: [ :each | each model = ' ' ].
	
	self assertModel: 'hello' position: #top equals: 'world' position: #top.
	self assertModel: 'hola' position: #top equals: 'mundo' position: #top.
	self assertModel: 'hello' position: #left equals: 'hola' position: #left.
	self assertModel: 'hello' position: #bottom equals: 'hola' position: #top.
	self assertModel: text position: [:rectangle | rectangle topLeft + 5 ] equals: 'hello' position: #topLeft.