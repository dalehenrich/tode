examples
example03ShowCode
	"
	self new example03ShowCode
	"

	| builder |
	builder := RTTextBuilder new.
	builder shape rectangle withBorder; color: (Color gray alpha: 0.2).
	builder wordShape color: Color brown.
	builder wordInteraction  
					highlight;
					when: TRMouseClick do: [ :event | event element model inspect ].
	builder addText: (RTTextBuilderExamples >> #example03ShowCode) getSource.
	^ builder open