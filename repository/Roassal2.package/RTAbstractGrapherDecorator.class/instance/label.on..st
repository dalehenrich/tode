utility
label: aString on: position
	"Add a label in the view"
	| e |
	e := RTLabel elementOn: aString.
	e translateTo: position.
	builder view add: e.
	^ e