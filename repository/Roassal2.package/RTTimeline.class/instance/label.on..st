private - utility
label: aString on: position
	"Add a label in the view"
	| e |
	e := timelineLabelBuilder elementOn: aString.
	e translateTo: position.
	self view add: e.
	^ e