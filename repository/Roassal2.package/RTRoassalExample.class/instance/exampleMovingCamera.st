sources
exampleMovingCamera
	
	| v menu |
	v := RTView new.
	v add: (RTEllipse new size: 50) element.

	menu := RTMenuBuilder new view: v.
	menu menu: '<-' callback: [ v canvas camera translateBy: -10 @ 0. v signalUpdate ].
	menu menu: '->' callback: [ v canvas camera translateBy: 10 @ 0. v signalUpdate ].
	menu menu: 'V' callback: [ v canvas camera translateBy: 0 @ 10. v signalUpdate ].
	menu menu: '^' callback: [ v canvas camera translateBy: 0 @ -10. v signalUpdate ].
	 

	^ v