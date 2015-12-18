tests
fixmeTestWordHighlight
	| element text |
	builder := RTTextBuilder new.
	text := 'hello'.
	builder interaction highlightColored: Color blue.
	builder addText: text.
	element := builder view elementFromModel: text.
	self assert: element shape color = element shape defaultColor.
	element announce: (TRMouseEnter new shape: element trachelShape).
	self assert: element shape color = Color blue.
	element announce: (TRMouseLeave new shape: element trachelShape).
	self assert: element shape color = element shape defaultColor.