interaction
testGrowing

	| view el |
	view := RTView new.
	el := RTBox new size: 20; color: (Color purple alpha: 0.2); element.
	el @ RTDraggable.
	el translateTo: 100 @ 130.
	view add: el.
	
	