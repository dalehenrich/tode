examples
example04ShowCodeAsBoxes
	"
	self new example04ShowCodeAsBoxes
	"

	| builder |
	builder := RTTextBuilder new.
	builder shape rectangle withBorder color: (Color white alpha: 0.2).		
	builder wordShape rectangle 
								height: 3; 
								width: [ :model | model size + 3 ];
								color: Color yellow.
	builder wordInteraction  
					highlight;
					popup;
					when: TRMouseClick do: [ :event | event element model inspect ].
	builder addText: (RTTextBuilderExamples>>#example04ShowCodeAsBoxes) getSource.
	^ builder open