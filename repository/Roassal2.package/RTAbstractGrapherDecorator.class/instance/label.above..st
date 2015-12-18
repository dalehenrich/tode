utility
label: aString above: position
	"Add a label in the view"
	| e |
	e := self label: aString on: position.
	e translateTo: position - (e extent / 2).
	^ e