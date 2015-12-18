tests
testFromAll

	| v es |
	v := RTView new.

	es := (RTEllipse new size: 20) elementsOn: (1 to: 2).
	v addAll: es.
	
	self assert: v edges size equals: 0.
	RTEdgeBuilder new
		view: v;
		objects: (1 to: 2) fromAll: (Array with: 1) to: 2.

	es @ RTPopup.
	RTTreeLayout on: es.

	self assert: v edges size equals: 1.
	self assert: v edges first from position equals: (15.0@15.0).
	self assert: v edges first to position equals: (15.0@55.0).