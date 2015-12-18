basic
southAmerica
	"
	self new southAmerica
	"
	| view |
	view := RTView new.
	RTSVGPath southAmerica do: [ :country |
		|elem|
		elem := (RTSVGPath new
			path: (RTSVGPath perform: country);
			fillColor: Color random;
			scale: 2;
			borderWidth: 0.5) element model: (country asString).
		elem @ RTPopup.
		view add: elem.
	].
	view open