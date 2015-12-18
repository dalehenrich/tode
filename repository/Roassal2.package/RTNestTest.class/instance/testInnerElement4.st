composed shape
testInnerElement4

	| v shape es |
	v := RTView new.
	v @ RTDraggableView.

	shape := RTCompositeShape new.
	shape add: RTBox new.
	shape vertical.

	es := shape elementsOn: #(1 2).
	v addAll: es.

	RTNest new
		layout: RTGridLayout new;
		for: es inShape: #first add: [ :group :model |
			group addAll: ((RTBox new color: Color blue) elementsOn: (1 to: model)).
		].

	RTHorizontalLineLayout on: es.
	es @ RTDraggable.
	
	self assert: es first position ~= es second position