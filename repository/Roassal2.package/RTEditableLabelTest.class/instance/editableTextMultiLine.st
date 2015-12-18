examples
editableTextMultiLine
	"
	self new editableTextMultiLine.
	"
	| v shape |
	v := RTView new.
	1 to: 20 do: [ :i |
			shape := RTEditableLabel new.
			shape text: 
'Red 
Yellow
Green'.
			v add: shape element@RTDraggable.
	].
	RTGridLayout on: v elements.
	
	v open