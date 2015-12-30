private
createRoassalView
	| view builder |
	view := RTView new @ RTDraggableView.
	view canvas camera translateTo: 0 @ 0.
	builder := RTMenuBuilder new view: view.
	builder menu: 'Zoom in' callback: [ RTZoomInMove on: view ].
	builder menu: 'Zoom out' callback: [ RTZoomOutMove on: view ].
	builder
		menu: 'Center'
		callback: [ 
			view canvas camera focusOnCenter.
			view signalUpdate ].
	self setScrollBar.
	view canvas camera focusOnCenter.
	view signalUpdate