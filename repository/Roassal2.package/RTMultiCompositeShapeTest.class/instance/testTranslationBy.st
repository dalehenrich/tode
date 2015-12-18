tests
testTranslationBy

	| view shape el ps ps2 |
	view := RTView new.
	shape := RTCompositeShape new.
	shape add: (RTBox new color: Color blue; height: 20; width: 15).
	shape add: (RTBox new color: Color white; height: 20; width: 15) translateBy: 15 @ 0.
	shape add: (RTBox new color: Color red; height: 20; width: 15) translateBy: 30 @ 0.

	el := shape element.
	el @ RTDraggable.
	view add: el.

	self assert: view canvas numberOfShapes equals: 3.
	self assert: el shape class equals: RTCompositeShape.
	
	ps := view canvas shapes collect: #position.
	self assert: ps equals: (Array with: (-15 @ 0) with: (0 @ 0) with: (15 @ 0)).
	
	el translateBy: 10 @ 5.
	ps2 := view canvas shapes collect: #position.
	self assert: ps2 equals: (ps + (10 @ 5)).