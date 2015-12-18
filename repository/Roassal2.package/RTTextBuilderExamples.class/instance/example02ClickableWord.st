examples
example02ClickableWord
	"
	self new example02ClickableWord
	"

	| builder |
	builder := RTTextBuilder new.
	builder wordInteraction  
					highlightColored: Color blue;
					when: TRMouseClick do: [ :event | event element model inspect ].
	builder addText: 'hello world', String cr, 'hola mundo'.
	^ builder open