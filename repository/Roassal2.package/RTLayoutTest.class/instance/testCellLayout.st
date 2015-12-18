tests
testCellLayout
	| v els el30 el50 el80 |
	v := RTView new.
	els := RTBox new size: #yourself; color: (Color green alpha: 0.3); elementsOn: #(30 50 80).
	els @ RTDraggable.
	v addAll: els.

	RTEdgeBuilder new
		view: v;
		fromAssociations: (Array with: 30 -> 50 with: 30 -> 80).

	RTCellLayout new 
		gapSize: 0; on: els.
	el30 := els first.
	el50 := els second.
	el80 := els third.
	
	self assert: el30 encompassingRectangle bottom + 10 equals: el80 encompassingRectangle top.
	self assert: el30 encompassingRectangle right + 25 equals: el50 encompassingRectangle left.
	self assert: el50 encompassingRectangle bottom equals: el80 encompassingRectangle top.
