shapes
label2
	"
	self new label2
	"
	| view |
	view := RTView new.
	1 to: 20 do: [ :i |
		view add: (RTLabel elementOn: 'hello world').
	].
"	RTVerticalLineLayout on: view elements."
	RTGridLayout on: view elements.
"	RTHorizontalLineLayout on: view elements."
	view open