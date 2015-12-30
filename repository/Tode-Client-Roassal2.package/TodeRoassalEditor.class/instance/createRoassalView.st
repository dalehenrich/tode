private
createRoassalView
	| builder |
	roassalView := RTView new @ RTDraggableView.
	roassalView canvas camera translateTo: 0 @ 0.
	builder := RTMenuBuilder new view: roassalView.
	builder menu: 'Zoom in' callback: [ RTZoomInMove on: roassalView ].
	builder menu: 'Zoom out' callback: [ RTZoomOutMove on: roassalView ].
	builder
		menu: 'Center'
		callback: [ 
			roassalView canvas camera focusOnCenter.
			roassalView signalUpdate ].
	self setScrollBar.
	roassalView canvas camera focusOnCenter.
	roassalView signalUpdate