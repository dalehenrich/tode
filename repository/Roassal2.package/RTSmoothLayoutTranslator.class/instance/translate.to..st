hook
translate: element to: newPosition
	move := RTLinearMove new
					to: newPosition during: nbCycles on: element.

	view ifNil: [ view := element view ].
	view addAnimation: move.