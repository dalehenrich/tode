tests
testWordHighlight
	| element text |
	builder := RTTextBuilder new.
	text := 'hello world'.
	builder wordInteraction highlightColored: Color blue.
	builder addText: text.
	element := builder view elementFromModel: 'hello'.
	self assert: element trachelShape color = element shape defaultColor.
	element announce: (TRMouseEnter new shape: element trachelShape).
	self assert: element trachelShape color = Color blue.
	element announce: (TRMouseLeave new shape: element trachelShape).
	self assert: element trachelShape color = element shape defaultColor.