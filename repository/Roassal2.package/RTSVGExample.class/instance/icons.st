basic
icons
	"
	self new icons
	"
	| view |
	view := RTView new.
	RTSVGPath icons do: [ :icon |
		|elem|
		elem := (RTSVGPath new
		path: (RTSVGPath perform: icon);
		borderWidth: 0;
		scale: 8;
		fillColor: Color random) element.
		elem @ RTDraggable.
		view add: elem.
	].
	view open