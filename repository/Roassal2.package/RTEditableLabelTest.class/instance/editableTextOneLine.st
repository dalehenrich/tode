examples
editableTextOneLine
	"
	self new editableTextOneLine.
	"
	| v shape |
	v := RTView new.
	1 to: 20 do: [ :i |
			shape := RTEditableLabel new.
			shape text: 'Hello World'.
			v add: shape element@RTDraggable.
	].
	RTGridLayout on: v elements.
	
	v open