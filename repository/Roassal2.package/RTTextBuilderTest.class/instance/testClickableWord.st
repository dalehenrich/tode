tests
testClickableWord
	| t element |
	t := false.
	 
	builder wordInteraction 
					when: TRMouseClick do: [ :event | t := true ].
	builder addText: 'hello world'.
	self deny: t.
	
	element := builder view elementFromModel: 'hello'.
	element announce: TRMouseClick.
	self assert: t