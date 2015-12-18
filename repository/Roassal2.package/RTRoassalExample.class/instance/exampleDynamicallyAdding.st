sources
exampleDynamicallyAdding

	| c v |
	c := OrderedCollection new.

	v := RTView new.
	v canvas addMenu: '+1' callback: [ c add: 42 ].

	RTActiveAnimation new
		blockToExecute: [ 
			(v numberOfElements ~~ c size) ifTrue: 
				[ v clean. 
				  v addAll: ((RTBox new size: 8; color: Color blue) elementsOn: c).
				  RTGridLayout on: v elements.
				   ] ];
		inView: v.

	^ v

