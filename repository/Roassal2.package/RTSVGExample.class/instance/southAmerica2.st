basic
southAmerica2
	"
	self new southAmerica2
	"
	| view cn |
	cn := RTNColorLinearNormalizer inContext: (RTSVGPath southAmerica collect: #size)
		lowColor: (Color r:0.3 g:0.8 b:0.3)
		highColor: (Color r:0.8 g:0.3 b:0.3).
		
	view := RTView new.
	RTSVGPath southAmerica do: [ :country |
		|elem|
		elem := (RTSVGPath new
			path: (RTSVGPath perform: country);
			fillColor: (cn rtValue: country size);
			scale: 2) element.
		elem @ RTDraggable.
		view add: elem.
	].
	view open