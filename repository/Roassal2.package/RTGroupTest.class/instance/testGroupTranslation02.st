tests
testGroupTranslation02
	| v center elements firstPos |
	v := RTView new.

	center := (RTEllipse new size: 8; color: Color blue) element.
	v add: center.
	center translateBy: 80 @ 60.

	elements := (RTEllipse new size: 5; color: Color red) elementsOn: (1 to: 20).
	v addAll: elements.
	RTCircleLayout on: elements.
	
	firstPos := elements first position.
	elements translateBy: 80 @ 60.
	self assert: elements first position = (firstPos + (80 @ 60)).

	