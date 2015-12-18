shapes
label3
	"
	self new label3
	"
	| view |
	view := RTView new.
	1 to: 20 do: [ :i |
		view add: (RTLabel elementOn: i asString).
	].
"	RTVerticalLineLayout on: view elements."
	RTGridLayout on: view elements.
"	RTHorizontalLineLayout on: view elements."
	view open