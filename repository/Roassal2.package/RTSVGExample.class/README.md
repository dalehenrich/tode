RTSVGExample new installTitle: 'Animated' 
		code:
		' 
	| view randInt rand |
	rand := Random new.
	randInt := [ :n | (rand next * n) asInteger ].
	view := RTView new.
	RTSVGPath icons do: [ :icon |
		|elem|
		elem := (RTSVGPath new
		path: (RTSVGPath perform: icon);
		borderWidth: 0;
		scale: 5;
		fillColor: Color random) element.
		elem @ RTDraggable.
		view add: elem.
		elem translateBy: (randInt value: 400) @ (randInt value: 400).
		view addAnimation: (RTRotationMove angle: 100 during: (randInt value: 90) + 10 on: elem).
	].
	^ view
	'