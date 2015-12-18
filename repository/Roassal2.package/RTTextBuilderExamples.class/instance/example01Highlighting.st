examples
example01Highlighting
	"
	self new example01Highlighting
	"

	| builder |
	builder := RTTextBuilder new.
	builder wordInteraction highlightColored: Color blue.
	builder addText: 'hello world'.
	^ builder open