tests
testVerticalTreeLayout
	| v els el30 el50 el80 |
	v := RTView new.
	els := RTBox new size: #yourself; color: (Color green alpha: 0.3); elementsOn: #(30 50 80).
	els @ RTDraggable.
	v addAll: els.

	RTEdgeBuilder new
		view: v;
		fromAssociations: (Array with: 30 -> 50 with: 30 -> 80).

	RTTreeLayout new 
		isLayered: false; leftGap: 0; topGap: 0; verticalGap: 0; horizontalGap: 0; on: els.
	el30 := els first.
	el50 := els second.
	el80 := els third.
	self assert: el30 encompassingRectangle bottom equals: el50 encompassingRectangle top.
	self assert: el30 encompassingRectangle bottom equals: el80 encompassingRectangle top.
	self assert: el50 encompassingRectangle right equals: el80 encompassingRectangle left.
