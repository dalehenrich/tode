tests
testOpeningOnMultilineText3
	| text |
	text := (RTTextBuilderTest >> #testOpeningOnMultilineText3) getSource.
	builder addText: text.
	builder open close.