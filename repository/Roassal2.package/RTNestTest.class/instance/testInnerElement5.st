composed shape
testInnerElement5

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

	es first translateTo: 25 @ -20.
	self assert: es first position equals: 25 @ -20