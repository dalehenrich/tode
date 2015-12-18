nesting
multipleNesting
	" 
	self new multipleNesting
	"
	| view inner host edges outter trachelCanvas resizable |
	outter := OrderedCollection new.
	view := RTView new.
	view @ RTDraggableView.
	
	1 to: 200 by: 10 do: [ :i |
		inner := (RTBox new color: (Color purple alpha: 0.2)) elementsOn: (1 to: i).
		host := (RTBox new color: (Color yellow alpha: 0.1)) element.
		outter add: host.

		view add: host.
		view addAll: inner.
		edges := 
			RTEdge 
				buildEdgesFromObjects: (1 to: 100) 
				from: [ :v | v // 2 ] 
				to: #yourself 
				inView: view
				scope: inner.

		RTGridLayout new on: inner.
		RTNest new		
			on: host nest: inner.
	].
	RTGridLayout on: outter.
	
	trachelCanvas := view setUpCanvas.
	TRFocusCenter on: trachelCanvas.
	
	"Zoom a specific element"
	resizable := outter at: (Random new nextInt: outter size).
	view addMenu: 'Smaller' 
		callback: [ view addAnimation: (RTResizeMove new 
													toExtent: resizable extent * 0.6 
													during: 0.3 on: resizable) ].
	view addMenu: 'Bigger' 
		callback: [ view addAnimation: (RTResizeMove new 
													toExtent: resizable extent * (1 / 0.6) 
													during: 0.3 on: resizable) ].
	
	view openWithMenu