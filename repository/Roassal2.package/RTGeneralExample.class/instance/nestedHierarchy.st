nesting
nestedHierarchy
	" 
	self new nestedHierarchy
	"
	| view inner host |
	view := RTView new.
	
	inner := (RTBox new color: (Color purple alpha: 0.2)) elementsOn: (1 to: 100).
	host := (RTBox new color: (Color yellow alpha: 0.1)) element.

	inner do: [ :i | i when: TRMouseClick do: [:event | event model inspect ]  ].

	view add: host.
	view addAll: inner.
	RTEdge buildEdgesFromObjects: (1 to: 100) from: [ :v | v // 2 ] to: #yourself inView: view.

	RTTreeLayout new on: inner edges: view edges.
	RTNest new		
		on: host nest: inner.
		
	view openWithMenu